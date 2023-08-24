# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from apps.danhmucxe.models import Danhmucxe
from apps.hangxe.models import Hangxe


class Model(models.Model):
    id_model = models.CharField(primary_key=True, max_length=10)
    ten_model = models.CharField(max_length=45)
    sochongoi = models.IntegerField()
    id_danhmucxe = models.ForeignKey(Danhmucxe, on_delete=models.PROTECT, db_column='id_DanhMucXe')  # Field name made lowercase.
    id_hangxe = models.ForeignKey(Hangxe, on_delete=models.PROTECT, db_column='id_HangXe')  # Field name made lowercase.
      # Field name made lowercase.

    

    class Meta:
        managed = True
        db_table = 'model'
    def __str__(self):
        return f"{self.id_model}"