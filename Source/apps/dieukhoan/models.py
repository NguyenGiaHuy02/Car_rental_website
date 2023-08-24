# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Dieukhoan(models.Model):
    id_dieukhoan = models.CharField(db_column='id_DieuKhoan', primary_key=True, max_length=10)  # Field name made lowercase.
    dieukhoanchung = models.CharField(db_column='DieuKhoanChung', max_length=255)  # Field name made lowercase.
    dieukhoanboithuong = models.CharField(db_column='DieuKhoanBoiThuong', max_length=255)  # Field name made lowercase.
    dieukhoanphatsinh = models.CharField(db_column='DieuKhoanPhatSinh', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'dieukhoan'
    def __str__(self):
        return f"{self.id_dieukhoan}"