from django.contrib import admin
from .models import Hinhthucthue
# Register your models here.
class HinhthucthueAdmin(admin.ModelAdmin):
    list_display = ("id_hinhthuc","ten_hinhthuc","uudai")
    search_fields = ["ten_hinhthuc"]
    list_filter = ("id_hinhthuc","ten_hinhthuc")
admin.site.register(Hinhthucthue,HinhthucthueAdmin)