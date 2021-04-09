from django.db import models
import sys

sys.path.append("..")


# from ..record.models import Allergy, Vaccination


# Create your models here.
class Patient(models.Model):
    patient_surname = models.CharField('Фамилия', max_length=50)
    patient_name = models.CharField('Имя', max_length=50)
    patient_patronymic = models.CharField('Отчество', max_length=50)
    date_of_birth = models.DateTimeField('Дата рождения')
    home_address = models.CharField('Адрес', max_length=100)
    work_place = models.CharField('Место работы', max_length=50)
    work_position = models.CharField('Должность', max_length=30)
    blood_type = models.CharField('Группа крови', max_length=10)
    phone_number = models.CharField('Номер телефона', max_length=50)

    def __str__(self):
        return self.patient_surname

    class Meta:
        db_table = 'patient'
        verbose_name = 'Пациент'
        verbose_name_plural = 'Пациенты'


class PatientWithAllergy(models.Model):
    patient = models.ForeignKey(Patient, related_name='PatientWithAllergy_patient', on_delete=models.CASCADE)
    allergy = models.ForeignKey(to='record.Allergy', related_name='PatientWithAllergy_allergy',
                                on_delete=models.CASCADE)
    comment = models.TextField('Комментарии')

    def __str__(self):
        return self.patient

    class Meta:
        db_table = 'patient_allergy'
        verbose_name = 'Аллергии пациента'
        verbose_name_plural = 'Аллергии пациентов'


class PatientWithVaccination(models.Model):
    patient = models.ForeignKey(Patient, related_name='PatientWithVaccination_patient', on_delete=models.CASCADE)
    vaccination = models.ForeignKey(to='record.Vaccination', related_name='PatientWithVaccination_vaccination',
                                    on_delete=models.CASCADE)
    date_vaccination = models.DateTimeField('Дата прививки')

    def __str__(self):
        return self.patient

    class Meta:
        db_table = 'patient_vaccination'
        verbose_name = 'Прививочный лист'
        verbose_name_plural = 'Прививочные листы'
