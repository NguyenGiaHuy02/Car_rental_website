from django.contrib import admin
from .models import Taixe
# Register your models here.
class TaiXeAdmin(admin.ModelAdmin):
    list_display = ("id_taixe","ten_taixe","diachi","sdt")
    search_fields = ["id_taixe","ten_taixe","diachi","sdt"]
    list_filter = ("id_taixe","ten_taixe","diachi","sdt")
admin.site.register(Taixe,TaiXeAdmin)