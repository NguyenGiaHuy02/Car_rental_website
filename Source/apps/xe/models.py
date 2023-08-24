# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from email.policy import default
from django.db import models
from apps.model.models import Model
from django.core.files.storage import FileSystemStorage
from django.utils.html import mark_safe
fs = FileSystemStorage(location='/img/car-image')
class Xe(models.Model):
    id_xe = models.CharField(db_column='id_Xe', primary_key=True, max_length=10)  # Field name made lowercase.
    ten_xe = models.CharField(db_column='TenXe', max_length=30,default="CarName")
    nhienlieu = models.CharField(db_column='NhienLieu', max_length=20)  # Field name made lowercase.
    sacdienthoai = models.IntegerField(db_column='SacDienThoai')  # Field name made lowercase. This field type is a guess.
    hopso = models.CharField(db_column='HopSo', max_length=20)  # Field name made lowercase.
    dieuhoa = models.CharField(db_column='DieuHoa', max_length=20)  # Field name made lowercase.
    cameralui = models.IntegerField(db_column='CameraLui')  # Field name made lowercase. This field type is a guess.
    id_model = models.ForeignKey(Model, on_delete=models.PROTECT, db_column='id_Model')  # Field name made lowercase.
    mieuta = models.CharField(db_column='MieuTa', max_length=255)  # Field name made lowercase.
    trangthai = models.IntegerField(db_column='TrangThai')  # Field name made lowercase.
    hinhanh = models.ImageField(db_column='HinhAnh', storage=fs,default="STR")
    giatien = models.DecimalField(db_column='DonGia',decimal_places=2,max_digits=10,default=0)
    class Meta:
        managed = True
        db_table = 'xe'
    @property
    def hinhanh_preview(self):
        if self.hinhanh and hasattr(self.hinhanh,'url'):
            return self.hinhanh.url
    def __str__(self):
        return f"{self.id_xe}"
    