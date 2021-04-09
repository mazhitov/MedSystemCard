from django.contrib import admin
from .models import Allergy, Record, Vaccination, HospitalCard, HospitalCardRecord, RecordDiagnosis, Diagnosis, \
    PositionDiagnosis


# Register your models here.
@admin.register(Allergy, Vaccination, HospitalCard, HospitalCardRecord, RecordDiagnosis, Diagnosis,
                PositionDiagnosis,Record)
class PersonAdmin(admin.ModelAdmin):
    pass
