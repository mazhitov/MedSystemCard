from django.contrib import admin
from .models import Patient, PatientWithAllergy, PatientWithVaccination


# Register your models here.
@admin.register(Patient, PatientWithAllergy, PatientWithVaccination)
class PersonAdmin(admin.ModelAdmin):
    pass
