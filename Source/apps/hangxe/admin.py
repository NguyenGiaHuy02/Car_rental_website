from django.contrib import admin
from .models import Hangxe
# Register your models here.
class HangXeAdmin(admin.ModelAdmin):
    list_display = ("id_hangxe","ten_hangxe")
    search_fields = ["ten_hangxe"]
    list_filter = ("id_hangxe","ten_hangxe")
admin.site.register(Hangxe,HangXeAdmin)