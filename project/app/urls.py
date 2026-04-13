from django.urls import path
from . import views

urlpatterns = [
    path("", views.user_profile, name="user_profile"),
    path("profile/", views.user_profile, name="user_profile"),
    path("profile/courses/", views.user_courses, name="user_courses"),
    path("profile/events/", views.user_events, name="user_events"),
    path("profile/magazines/", views.user_magazines, name="user_magazines"),
    path("profile/edit/", views.user_edit_profile, name="user_edit_profile"),
    path("profile/transactions/", views.user_transactions, name="user_transactions"),
    path("profile/certificates/", views.user_certificates, name="user_certificates"),
    path("profile/add_credits", views.user_add_credits, name="user_add_credits"),
    path("login/", views.login_view, name="login"),
    path("logout/", views.logout_view, name="logout"),
    path('profile/add-credits/delete/<int:credit_id>/', views.delete_credit, name='delete_credit'),
]