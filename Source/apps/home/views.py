from django.shortcuts import render
from apps.hinhthucthue.models import Hinhthucthue as hinhthucthuemodel
from apps.model.models import Model as modelxemodel
from apps.xe.models import Xe as Xemodel
from apps.danhmucxe.models import Danhmucxe as Danhmucxemodel
from django.db.models import Q
# Create your views here.
#Home
danhmucxe_list = Danhmucxemodel.objects.filter()
def get_home(request):
    hinhthucthue_list = hinhthucthuemodel.objects.filter()
    xe_list = Xemodel.objects.filter(trangthai = 1).exclude(Q(id_model="HD_BK"))[:6]
    bike_list = Xemodel.objects.filter(trangthai = 1).exclude(~Q(id_model="HD_BK"))[:6]
    oto_id = Danhmucxemodel.objects.get(ten_danhmucxe = 'Ôto')
    xemay_id = Danhmucxemodel.objects.get(ten_danhmucxe = 'Xe máy')
    return render(request,'../templates/home/home.html',{'hinhthucthue_list' : hinhthucthue_list,'modelxe_list' : xe_list,'bike_list':bike_list,'danhmucxe_list':danhmucxe_list,'oto_id':oto_id,'xemay_id':xemay_id})
#About
def get_about(request):
    return render(request,'../templates/common/about.html',{'danhmucxe_list':danhmucxe_list})
def get_service(request):
    hinhthucthue_list = hinhthucthuemodel.objects.filter()
    return render(request,'../templates/common/service.html',{'hinhthucthue_list': hinhthucthue_list,'danhmucxe_list':danhmucxe_list})    
