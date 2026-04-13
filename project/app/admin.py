from django.contrib import admin

# import all models

import app.models as models

admin.site.register(models.Course)
admin.site.register(models.UserCourse)
admin.site.register(models.Event)
admin.site.register(models.UserEvent)
admin.site.register(models.Magazine)
admin.site.register(models.UserMagazine)
admin.site.register(models.Transaction)
admin.site.register(models.Certificate)
admin.site.register(models.CustomUser)
