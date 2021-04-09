from django.contrib import admin
from .models import HospitalService, Service, RecordService, PositionService


# Register your models here.
@admin.register(HospitalService, Service, RecordService, PositionService)
class PersonAdmin(admin.ModelAdmin):
    pass
