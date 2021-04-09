from django.db import models


# Create your models here.
class Service(models.Model):
    name_service = models.TextField('Наименование услуги')
    price = models.DecimalField('Цена', blank=True, null=True, max_digits=10, decimal_places=10)

    def __str__(self):
        return self.name_service

    class Meta:
        verbose_name = 'Процедура'
        verbose_name_plural = 'Процедуры'


class RecordService(models.Model):
    record = models.ForeignKey(to='record.Record', related_name='RecordService_record', on_delete=models.CASCADE)
    service = models.ForeignKey(Service, related_name='RecordService_service', on_delete=models.CASCADE)
    comment = models.TextField('Комментарий')

    def __str__(self):
        return self.record

    class Meta:
        verbose_name = 'Процедуры в записи'
        verbose_name_plural = 'Процедуры в записях'


class HospitalService(models.Model):
    hospital_card = models.ForeignKey(to='record.HospitalCard', related_name='HospitalService_hospital_card',
                                      on_delete=models.CASCADE)
    service = models.ForeignKey(Service, related_name='HospitalService_service', on_delete=models.CASCADE)
    rec_date = models.DateTimeField('Дата процедуры')
    comment = models.TextField('Комментарий')
    doctor = models.ForeignKey(to='doctor.Doctor', related_name='HospitalService_doctor', on_delete=models.CASCADE)

    def __str__(self):
        return self.hospital_card

    class Meta:
        verbose_name = 'Процедуры в истории болезни'
        verbose_name_plural = 'Процедуры в истории болезни'


class PositionService(models.Model):
    position = models.ForeignKey(to='doctor.Position', related_name='PositionService_position',
                                 on_delete=models.CASCADE)
    service = models.ForeignKey(Service, related_name='PositionService_service', on_delete=models.CASCADE)

    def __str__(self):
        return self.position

    class Meta:
        verbose_name = 'Специальности-Процедуры'
        verbose_name_plural = 'Специальности-Процедуры'
