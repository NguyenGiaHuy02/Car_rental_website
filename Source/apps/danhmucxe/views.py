from django.shortcuts import render
from .models import Danhmucxe as danhmuc
# Create your views here.
def get_danhmuc(request):
    danhmuc_list = danhmuc.objects.filter()
    return render(request,'home/home.html',{'danhmuc_list': danhmuc_list})