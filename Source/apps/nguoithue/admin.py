from django.contrib import admin
from .models import Nguoithue
# Register your models here.
class NguoiThuenAdmin(admin.ModelAdmin):
    list_display = ("id_nguoithue","ten_nguoithue","sdt","diachi","email")
    search_fields = ["id_nguoithue","ten_nguoithue","sdt","diachi","email"]
    list_filter = ("id_nguoithue","ten_nguoithue","sdt","diachi","email")
admin.site.register(Nguoithue,NguoiThuenAdmin)