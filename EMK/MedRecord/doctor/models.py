from django.db import models


# Create your models here.

class Position(models.Model):
    name_position = models.CharField('Специальность', max_length=200)

    def __str__(self):
        return self.name_position

    class Meta:
        verbose_name = 'Специальность'
        verbose_name_plural = 'Специальности'


class Department(models.Model):
    name_department = models.CharField('Отделение', max_length=100)

    def __str__(self):
        return self.name_department

    class Meta:
        verbose_name = 'Отделение'
        verbose_name_plural = 'Отделения'


class Doctor(models.Model):
    doctors_name = models.CharField('Врач', max_length=100)
    id_position = models.ForeignKey(Position, related_name='doctor_position', on_delete=models.CASCADE)
    office = models.CharField('Рабочий кабинет', max_length=20)
    id_department = models.ForeignKey(Department, related_name='doctor_department', on_delete=models.CASCADE)

    def __str__(self):
        return self.doctors_name

    class Meta:
        verbose_name = 'Врач'
        verbose_name_plural = 'Врачи'
