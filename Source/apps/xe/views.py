from re import X
from django.shortcuts import get_object_or_404, redirect, render
from apps.hinhthucthue.models import Hinhthucthue
from apps.model.models import Model as modelxemodel
from apps.xe.models import Xe as Xemodel
from apps.danhmucxe.models import Danhmucxe as Danhmucxemodel
from apps.dieukhoan.models import Dieukhoan as Dieukhoanmodel
from apps.thanhtoan.models import Thanhtoan as Thanhtoanmodel
# Create your views here.
danhmucxe_list = Danhmucxemodel.objects.filter()
def get_danhsachxe(request,id):
    dsxe_list = []
    modelxe_list = modelxemodel.objects.filter(id_danhmucxe = id)
    for i in modelxe_list:
        danhsachxe_list = Xemodel.objects.filter(id_model = i.id_model)
        danhsachxe_list = list(danhsachxe_list)
        dsxe_list += danhsachxe_list
    return render(request,'../templates/xe/xe.html',{'xe_list':dsxe_list,'danhmucxe_list':danhmucxe_list})

def get_chitietxe(request,id):
    chitietxe = Xemodel.objects.get(id_xe = id)
    chitietmodelxe = modelxemodel.objects.get(id_model = chitietxe.id_model)
    return render(request,'../templates/xe/chitietxe.html',{'chitietxe':chitietxe,'danhmucxe_list':danhmucxe_list,'chitietmodel':chitietmodelxe})

def get_dsxe_theoten(request):
    if 'car_name' in request.GET:
        car_name = request.GET['car_name']
        ds_xe = Xemodel.objects.filter(ten_xe__icontains=car_name)
    return render(request,'../templates/xe/xe.html',{'xe_list':ds_xe})
def get_thuexe(request,id):
    dieukhoan_list = Dieukhoanmodel.objects.get(id_dieukhoan = 'DK')
    hinhthucthue_list = Hinhthucthue.objects.filter()
    thanhtoan_list = Thanhtoanmodel.objects.filter()
    Xe = get_object_or_404(Xemodel,id_xe = id)
    if request.method == 'POST':
        tennguoidung = request.POST.get('fname')
        emailnguoidung = request.POST.get('femail')
        diachinguoidung = request.POST.get('faddress')
        sdtnguoidung = request.POST.get('fsdt')
        fngaybatdau = request.POST.get('fngaybatdau')
        fngayketthuc = request.POST.get('fngayketthuc')
        fhinhthucthue = request.POST.get('fhinhthuc')
        fphuongthucthanhtoan = request.POST.get('fpayment')
        request.session['fidxe'] = Xe.id_xe
        request.session['fname'] = tennguoidung
        request.session['femail'] = emailnguoidung
        request.session['faddress'] = diachinguoidung
        request.session['fsdt'] = sdtnguoidung
        request.session['fngaybatdau'] = fngaybatdau
        request.session['fngayketthuc'] = fngayketthuc
        request.session['fhinhthuc'] = fhinhthucthue
        request.session['fpayment'] = fphuongthucthanhtoan
        request.session['fiddieukhoan'] = 'DK'
        return redirect('/hopdong')  

    return render(request,'../templates/xe/thuexe.html',{'xe':Xe,'dieukhoan_list':dieukhoan_list,'hinhthucthue_list': hinhthucthue_list,'danhmucxe_list':danhmucxe_list,'thanhtoan_list':thanhtoan_list})