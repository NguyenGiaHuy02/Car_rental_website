# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from email.policy import default
from django.db import models


class Taixe(models.Model):
    id_taixe = models.CharField(db_column='id_TaiXe', primary_key=True, max_length=10)  # Field name made lowercase.
    ten_taixe = models.CharField(db_column='Ten_TaiXe', max_length=30)  # Field name made lowercase.
    diachi = models.CharField(db_column='DiaChi', max_length=60)  # Field name made lowercase.
    sdt = models.CharField(db_column='SDT', max_length=11)  # Field name made lowercase.
    tinhtrang = models.IntegerField(db_column = "TinhTrang" , default = 1) 
    class Meta:
        managed = True
        db_table = 'taixe'
    def __str__(self):
        return f"{self.id_taixe}"