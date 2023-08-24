from tabnanny import check
from django.shortcuts import redirect, render
from fastapi import Response
from apps.taikhoan.models import Taikhoan as taikhoanmodel
from apps.nguoithue.models import Nguoithue as nguoithuemodel
from django.contrib import messages
from rest_framework.views import APIView

# Create your views here.

def get_taikhoan(request):
    if request.method == 'POST':
        username = request.POST['femail']
        password = request.POST['fpassword']
        try:
            user = taikhoanmodel.objects.get(ten_taikhoan = username)
            if user.matkhau == password:
                messages.info(request,'Đăng nhập thành công')
                nguoithue = nguoithuemodel.objects.get(id_taikhoan = user.id_taikhoan)
                return render(request,'../templates/login/login.html',{'user_name':nguoithue.ten_nguoithue})
            else:
                return redirect('/login')
        except taikhoanmodel.DoesNotExist:
            messages.info(request,'Tài khoản không tồn tại')
            return redirect('/login')       
    return render(request,'../templates/login/login.html')
def get_taotaikhoan(request):
    ds_nguoithue = nguoithuemodel.objects.filter().count()
    if(request.method == 'POST'):
        nguoithue = nguoithuemodel()
        taikhoan = taikhoanmodel()
        taikhoan.id_taikhoan = "TK_"+str(ds_nguoithue)
        taikhoan.ten_taikhoan = request.POST['femail']
        taikhoan.matkhau = request.POST['fpassword']
        checkedpassword = request.POST['fcheckedpassword']
        taikhoan.loai_taikhoan = 'Người dùng'
        nguoithue.id_nguoithue = "NT_"+str(ds_nguoithue)
        nguoithue.ten_nguoithue = request.POST['fname']
        nguoithue.sdt = request.POST['fphone']
        nguoithue.diachi = request.POST['faddress']
        nguoithue.email = request.POST['femail']
        nguoithue.id_taikhoan = taikhoan
        if(taikhoan.matkhau != checkedpassword):
            messages.info(request,'Password không trùng khớp')
            return redirect('/register')
        elif taikhoan.ten_taikhoan == "" or taikhoan.matkhau =="" or nguoithue.ten_nguoithue == "" or nguoithue.sdt == "" or nguoithue.diachi == "":
            messages.info(request,'Thông tin nhập vào bị thiếu')
            return redirect('/register')
        else :
            messages.info(request,'Xin chào '+nguoithue.ten_nguoithue)
            taikhoan.save()
            nguoithue.save()
            return redirect('/login')      
    return render(request,'../templates/login/register.html')