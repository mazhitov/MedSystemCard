from django.contrib import admin
from .models import Doctor, Department, Position


# Register your models here.
@admin.register(Doctor, Department, Position)
class PersonAdmin(admin.ModelAdmin):
    pass
