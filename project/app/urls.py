from django.urls import path
from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("profile/", views.user_profile, name="user_profile"),
    path("profile/courses/", views.user_courses, name="user_courses"),
    path("profile/events/", views.user_events, name="user_events"),
    path("profile/magazines/", views.user_magazines, name="user_magazines"),
    path("profle/edit/", views.user_edit_profile, name="user_edit_profile"),
]