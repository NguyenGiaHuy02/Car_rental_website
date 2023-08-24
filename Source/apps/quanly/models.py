# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from apps.taikhoan.models import Taikhoan

class Admin(models.Model):
    id_admin = models.CharField(db_column='id_Admin', primary_key=True, max_length=10)  # Field name made lowercase.
    ten_admin = models.CharField(db_column='Ten_Admin', max_length=40)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'admin'
