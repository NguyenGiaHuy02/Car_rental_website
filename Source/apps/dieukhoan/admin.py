from django.contrib import admin
from .models import Dieukhoan
# Register your models here.
class DieuKhoanAdmin(admin.ModelAdmin):
    list_display = ("id_dieukhoan","dieukhoanchung","dieukhoanboithuong","dieukhoanphatsinh")
    list_filter = ("id_dieukhoan",)
admin.site.register(Dieukhoan,DieuKhoanAdmin)