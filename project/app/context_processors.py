from .models import UserCourse

def puncte_globale(request):
    if request.user.is_authenticated:
        cursurile_mele = UserCourse.objects.filter(user=request.user)
        
        total = 0
        for obiect in cursurile_mele:
            if obiect.progress == 100:
                total = total + obiect.course.number_credits
        
        return {'total_points': total}
    
    return {'total_points': 0}