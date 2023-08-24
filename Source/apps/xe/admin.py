from django.contrib import admin
from .models import Xe
# Register your models here.
class XeAdmin(admin.ModelAdmin):
    list_display = ("id_xe","ten_xe","nhienlieu","sacdienthoai","hopso","dieuhoa","cameralui","id_model","mieuta","trangthai","giatien","hinhanh")
    search_fields = ["id_xe","ten_xe","nhienlieu","sacdienthoai","hopso","dieuhoa","cameralui","mieuta","trangthai","giatien"]
    list_filter = ("id_xe","nhienlieu","sacdienthoai","hopso","dieuhoa","cameralui","mieuta","trangthai")
    readonly_fields = ('hinhanh_preview',)

    def hinhanh_preview(self, obj):
        return obj.hinhanh_preview
    hinhanh_preview.short_description = 'Preview'
    hinhanh_preview.allow_tags = True
admin.site.register(Xe,XeAdmin)