from django.contrib import admin
from .models import Model
# Register your models here.
class ModelXeAdmin(admin.ModelAdmin):
    list_display = ("id_model","ten_model","sochongoi","id_danhmucxe","id_hangxe")
    search_fields = ["ten_model","sochongoi"]
    list_filter = ("id_model","ten_model","sochongoi")
    

    

admin.site.register(Model,ModelXeAdmin)