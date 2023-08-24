# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Thanhtoan(models.Model):
    id_thanhtoan = models.CharField(db_column='id_ThanhToan', primary_key=True, max_length=10)  # Field name made lowercase.
    phuongthucthanhtoan = models.CharField(db_column='PhuongThucThanhToan', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'thanhtoan'
    def __str__(self):
        return f"{self.id_thanhtoan}"