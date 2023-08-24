from django.contrib import admin
from .models import Thanhtoan
# Register your models here.
class ThanhToanAdmin(admin.ModelAdmin):
    list_display = ("id_thanhtoan","phuongthucthanhtoan")
    search_fields = ["id_thanhtoan","phuongthucthanhtoan"]
    list_filter = ("id_thanhtoan","phuongthucthanhtoan")
admin.site.register(Thanhtoan,ThanhToanAdmin)