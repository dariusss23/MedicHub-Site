from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from .models import *
from datetime import datetime
from django.contrib.auth import update_session_auth_hash
from django.utils import timezone
from django.template.loader import render_to_string
from django.shortcuts import get_object_or_404
from weasyprint import HTML
import tempfile
from django.utils import translation


def user_profile(request):
    if request.user.is_authenticated:
        now = timezone.now()
        user_courses = UserCourse.objects.filter(user=request.user)
    
        recent_courses = user_courses.filter(progress__gt=0, progress__lt=100)[:2]
        next_events = UserEvent.objects.filter(user=request.user, event__event_date__gte=now).order_by('event__event_date')[:2]
        latest_certificates = Certificate.objects.filter(user=request.user).order_by('-issue_date')[:2]

        context = {
            'active_courses_count': user_courses.filter(progress__gt=0, progress__lt=100).count(),
            'upcoming_events_count': next_events.count(),
            'certs_count': Certificate.objects.filter(user=request.user).count(),
            'total_points': sum(uc.course.number_credits for uc in user_courses if uc.progress == 100),
            'recent_courses': recent_courses,
            'next_events': next_events,
            'latest_certificates': latest_certificates,
        }
    else:
        context = {}

    return render(request, 'app/user_profile.html', context)

def user_courses(request):
    if request.user.is_authenticated:
        user_courses_list = UserCourse.objects.filter(user=request.user).select_related('course')
        
        total_points = sum(item.course.number_credits for item in user_courses_list if item.progress == 100)
    else:
        user_courses_list = UserCourse.objects.none()
        total_points = 0
    
    return render(request, 'app/user_courses.html', {
        'user_courses': user_courses_list,
        'total_points': total_points
    })

def user_events(request):
    if request.user.is_authenticated:
        user_events_list = UserEvent.objects.filter(user=request.user).select_related('event')
        years = UserEvent.objects.filter(user=request.user).dates('event__event_date', 'year', order='DESC')
    else:
        user_events_list = []
        years = []
    
    return render(request, 'app/user_events.html', {
        'user_events': user_events_list,
        'years': years
    })

def user_magazines(request):
    if request.user.is_authenticated:
        magazines_list = Magazine.objects.all().order_by('-publication_date')
        categories = Magazine.objects.values_list('category', flat=True).distinct()
        years = Magazine.objects.values_list('edition_year', flat=True).distinct().order_by('-edition_year')
    else:
        magazines_list = []
        categories = []
        years = []

    return render(request, 'app/user_magazines.html', {
        'magazines': magazines_list,
        'categories': categories,
        'years': years
    })

def user_edit_profile(request):
    if not request.user.is_authenticated:
        return redirect('login')

    if request.method == 'POST':
        user = request.user
        
        user.last_name = request.POST.get('last_name')
        user.first_name = request.POST.get('first_name')
        user.email = request.POST.get('email')
        user.phone = request.POST.get('phone')
        user.address = request.POST.get('address')
        user.city = request.POST.get('city')
        user.parafa_code = request.POST.get('parafa_code')
        user.cuim = request.POST.get('cuim')
        
        new_password = request.POST.get('new_password')
        current_password = request.POST.get('current_password')
        
        if current_password and new_password:
            if user.check_password(current_password):
                user.set_password(new_password)
                user.save()
                update_session_auth_hash(request, user)
                messages.success(request, 'Parola a fost schimbată!')
            else:
                messages.error(request, 'Parola curentă este incorectă.')
                return redirect('user_edit_profile')

        user.save()
        messages.success(request, 'Profilul a fost actualizat cu succes!')
        return redirect('user_edit_profile')

    return render(request, 'app/user_edit_profile.html')


def user_transactions(request):
    if request.user.is_authenticated:
        transactions_list = Transaction.objects.filter(user=request.user).order_by('-date')
        
        total_cheltuit = 0
        numar_active = 0
        an_curent = datetime.now().year
        
        for t in transactions_list:
            if t.status != 'failed':
                numar_active = numar_active + 1
            
            if t.status == 'completed' and t.date.year == an_curent:
                total_cheltuit = total_cheltuit + t.amount
                
        context = {
            'transactions': transactions_list,
            'total_spent': total_cheltuit,
            'active_count': numar_active
        }
    else:
        context = {
            'transactions': [],
            'total_spent': 0,
            'active_count': 0
        }
        
    return render(request, 'app/user_transactions.html', context)

def user_certificates(request):
    if request.user.is_authenticated:
        certificates_list = Certificate.objects.filter(user=request.user).order_by('-issue_date')
        years = []
        for cert in certificates_list:
            if cert.issue_date.year not in years:
                years.append(cert.issue_date.year)
        years.sort(reverse=True)
    else:
        certificates_list = []
        years = []

    return render(request, 'app/user_certificates.html', {
        'certificates': certificates_list,
        'years': years
    })

def user_add_credits(request):
    if not request.user.is_authenticated:
        return redirect('login')

    if request.method == 'POST':
        ManualCredit.objects.create(
            user=request.user,
            title=request.POST.get('title'),
            score=request.POST.get('score'),
            year=request.POST.get('year'),
            credit_type=request.POST.get('type'),
            is_verified=True
        )
        return redirect('user_add_credits')

    manual_credits = ManualCredit.objects.filter(user=request.user).order_by('-created_at')
    
    total_manual = sum(c.score for c in manual_credits)

    return render(request, 'app/user_add_credits.html', {
        'manual_credits': manual_credits,
        'total_manual': total_manual
    })

def delete_credit(request, credit_id):
    credit = ManualCredit.objects.get(id=credit_id, user=request.user)
    credit.delete()
    return redirect('user_add_credits')

def login_view(request):
    if request.method == 'POST':
        u = request.POST.get('username')
        p = request.POST.get('password')
        user = authenticate(username=u, password=p)
        
        if user is not None:
            login(request, user)
            return redirect('user_profile')
        else:
            messages.error(request, "Date incorecte!")
            
    return render(request, 'app/login.html')

def logout_view(request):
    logout(request)
    return redirect('user_profile')

def export_certificate_pdf(request, cert_id):
    translation.activate('ro')
    
    certificat = get_object_or_404(Certificate, certificate_id=cert_id, user=request.user)

    context = {
        'cert': certificat,  
        'user': request.user,
    }

    html_string = render_to_string('app/pdf/certificate_template.html', context)
    
    html = HTML(string=html_string, base_url=request.build_absolute_uri())
    result = html.write_pdf()

    response = HttpResponse(content_type='application/pdf')
    filename = f"Certificat_{certificat.certificate_id}.pdf"
    response['Content-Disposition'] = f'attachment; filename="{filename}"'
    response.write(result)
    
    translation.deactivate()
    
    return response