from django.contrib import admin
from .models import Danhmucxe
# Register your models here.
class DanhMucXeAdmin(admin.ModelAdmin):
    list_display = ("id_danhmucxe","ten_danhmucxe")
    search_fields = ["ten_danhmucxe"]
    list_filter = ("id_danhmucxe","ten_danhmucxe")
admin.site.register(Danhmucxe,DanhMucXeAdmin)