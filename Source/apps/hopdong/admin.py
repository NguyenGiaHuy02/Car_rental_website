from django.contrib import admin
from .models import Hopdong
# Register your models here.
class HopDongAdmin(admin.ModelAdmin):
    list_display = ("id_hopdong","ten_hopdong","songaythue","ngaybatdau","ngayketthuc","tongtien","tienhoahong","id_xe","id_dieukhoan","id_thanhtoan","id_taixe","id_nguoithue","id_hinhthucthue")
    search_fields = ["ten_hopdong","songaythue","ngaybatdau","ngayketthuc","tongtien","tienhoahong"]
    list_filter = ("id_hopdong","ten_hopdong","songaythue","ngaybatdau","ngayketthuc","tongtien","tienhoahong","id_xe","id_dieukhoan","id_thanhtoan","id_taixe","id_nguoithue","id_hinhthucthue")
admin.site.register(Hopdong,HopDongAdmin)