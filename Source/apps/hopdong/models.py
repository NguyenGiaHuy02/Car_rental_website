# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from apps.xe.models import Xe
from apps.thanhtoan.models import Thanhtoan
from apps.taixe.models import Taixe
from apps.hinhthucthue.models import Hinhthucthue
from apps.nguoithue.models import Nguoithue
from apps.dieukhoan.models import Dieukhoan

class Hopdong(models.Model):
    id_hopdong = models.CharField(db_column='id_HopDong', primary_key=True, max_length=10)  # Field name made lowercase.
    ten_hopdong = models.CharField(db_column='Ten_HopDong', max_length=70)  # Field name made lowercase.
    songaythue = models.IntegerField(db_column='SoNgayThue')  # Field name made lowercase.
    ngaybatdau = models.DateField(db_column='NgayBatDau')  # Field name made lowercase.
    ngayketthuc = models.DateField(db_column='NgayKetThuc')  # Field name made lowercase.
    tongtien = models.DecimalField(db_column='TongTien', max_digits=10, decimal_places=0)  # Field name made lowercase.
    tienhoahong = models.DecimalField(db_column='TienHoaHong', max_digits=10, decimal_places=0)  # Field name made lowercase.
    id_xe = models.ForeignKey(Xe, on_delete=models.PROTECT, db_column='id_Xe')  # Field name made lowercase.
    id_dieukhoan = models.ForeignKey(Dieukhoan, on_delete=models.PROTECT, db_column='id_DieuKhoan')  # Field name made lowercase.
    id_thanhtoan = models.ForeignKey(Thanhtoan, on_delete=models.PROTECT, db_column='id_ThanhToan')  # Field name made lowercase.
    id_taixe = models.ForeignKey(Taixe, on_delete=models.PROTECT, db_column='id_TaiXe')  # Field name made lowercase.
    id_nguoithue = models.ForeignKey(Nguoithue, on_delete=models.PROTECT, db_column='id_NguoiThue')  # Field name made lowercase.
    id_hinhthucthue = models.ForeignKey(Hinhthucthue, on_delete=models.PROTECT, db_column='id_HinhThucThue')  # Field name made lowercase.
    tinhtrang = models.IntegerField(db_column = 'TinhTrang',default = 0)
    class Meta:
        managed = True
        db_table = 'hopdong'
    def __str__(self):
        return f"{self.id_hopdong}"