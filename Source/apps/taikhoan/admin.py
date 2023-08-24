from django.contrib import admin
from .models import Taikhoan
# Register your models here.
class TaiKhoanAdmin(admin.ModelAdmin):
    list_display = ("id_taikhoan","ten_taikhoan","loai_taikhoan")
    search_fields = ["id_taikhoan","ten_taikhoan","loai_taikhoan"]
    list_filter = ("id_taikhoan","ten_taikhoan","loai_taikhoan")
admin.site.register(Taikhoan,TaiKhoanAdmin)