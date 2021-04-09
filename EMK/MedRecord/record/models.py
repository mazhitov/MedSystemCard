from django.db import models


# Create your models here.
class Allergy(models.Model):
    name_allergy = models.TextField('Аллергия')

    def __str__(self):
        return self.name_allergy

    class Meta:
        verbose_name = 'Аллергия'
        verbose_name_plural = 'Аллергии'


class Vaccination(models.Model):
    name_vaccination = models.TextField('Прививки')

    def __str__(self):
        return self.name_vaccination

    class Meta:
        verbose_name = 'Прививка'
        verbose_name_plural = 'Прививки'


class HospitalCard(models.Model):
    doctor = models.ForeignKey(to='doctor.Doctor', related_name='hospital_doctor', on_delete=models.CASCADE)
    arrival_date = models.DateTimeField('Дата поступления')
    discharge_date = models.DateTimeField('Дата выписки')
    hospitalization_type = models.TextField('Вид госпитализации')
    department = models.ForeignKey(to='doctor.Department', related_name='hospital_department', on_delete=models.CASCADE)
    chamber = models.CharField('Палата', max_length=50)

    def __str__(self):
        return self.doctor

    class Meta:
        verbose_name = 'История болезни'
        verbose_name_plural = 'История болезни'


class Record(models.Model):
    patient = models.ForeignKey(to='patient.Patient', related_name='record_patient', on_delete=models.CASCADE)
    date_record = models.DateTimeField('Дата записи')
    doctor = models.ForeignKey(to='doctor.Doctor', related_name='record_doctor', on_delete=models.CASCADE)
    lamentation = models.TextField('Жалобы')
    hospital_card = models.ForeignKey(HospitalCard, related_name='record_hospital', on_delete=models.CASCADE)

    def __str__(self):
        return self.patient

    class Meta:
        verbose_name = 'Запись'
        verbose_name_plural = 'Записи'


class HospitalCardRecord(models.Model):
    record = models.ForeignKey(Record, related_name='HospitalCardRecord_record', on_delete=models.CASCADE)
    hospital_card = models.ForeignKey(HospitalCard, related_name='HospitalCardRecord_hospital_card', on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.record} + {self.hospital_card}'

    class Meta:
        verbose_name = 'Запись в истории болезни'
        verbose_name_plural = 'Записи в истории болезни'


class Diagnosis(models.Model):
    name_diagnosis = models.TextField('Диагноз')

    def __str__(self):
        return self.name_diagnosis

    class Meta:
        verbose_name = 'Диагноз'
        verbose_name_plural = 'Диагнозы'


class RecordDiagnosis(models.Model):
    record = models.ForeignKey(Record, on_delete=models.CASCADE, related_name='RecordDiagnosis_record')
    diagnosis = models.ForeignKey(Diagnosis, on_delete=models.CASCADE, related_name='RecordDiagnosis_diagnosis')
    doctor = models.ForeignKey(to='doctor.Doctor', on_delete=models.CASCADE, related_name='RecordDiagnosis_doctor')
    comment = models.TextField('Комментарий')

    def __str__(self):
        return self.record

    class Meta:
        verbose_name = 'Диагнозы в записи'
        verbose_name_plural = 'Диагнозы в записи'


class PositionDiagnosis(models.Model):
    position = models.ForeignKey(to='doctor.Position', on_delete=models.CASCADE, related_name='PositionDiagnosis_position')
    diagnosis = models.ForeignKey(Diagnosis, on_delete=models.CASCADE, related_name='PositionDiagnosis_diagnosis')

    def __str__(self):
        return self.position

    class Meta:
        verbose_name = 'Специальности-Диагнозы'
        verbose_name_plural = 'Специальности-Диагнозы'
