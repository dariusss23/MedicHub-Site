from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, world! This is the index page.")

def user_profile(request):
    return render(request, 'app/user_profile.html')

def user_courses(request):
    return render(request, 'app/user_courses.html')

def user_events(request):
    return render(request, 'app/user_events.html')

def user_magazines(request):
    return render(request, 'app/user_magazines.html')

def user_edit_profile(request):
    return render(request, 'app/user_edit_profile.html')