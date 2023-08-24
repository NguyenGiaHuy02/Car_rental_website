from django.dispatch import receiver
from django.shortcuts import get_object_or_404, redirect, render
from .models import Hopdong as HopdongModel
from django.http import JsonResponse
from apps.thanhtoan.models import Thanhtoan as thanhtoanmodel
from apps.xe.models import Xe as xemodel
from apps.dieukhoan.models import Dieukhoan as dieukhoanmodel
from apps.hinhthucthue.models import Hinhthucthue as hinhthucmodel
from apps.taixe.models import Taixe as taixemodel
from django.template.loader import render_to_string , get_template
from django.conf import settings
from apps.nguoithue.models import Nguoithue as nguoithuemodel
from django.core.mail import send_mail , EmailMultiAlternatives,EmailMessage
from django.contrib import messages
from django.utils.html import strip_tags
from decimal import Decimal
from django.urls import reverse
from datetime import datetime
from paypal.standard.forms import PayPalPaymentsForm
# Create your views here.
def make_hopdong(request):
    id = request.session['fidxe']
    name = request.session['fname']
    email = request.session['femail']
    address = request.session['faddress']
    sdt = request.session['fsdt']
    ngaybatdau = request.session['fngaybatdau']
    ngayketthuc = request.session['fngayketthuc']
    hinhthuc = request.session['fhinhthuc']
    payment = request.session['fpayment']
    dieukhoan = request.session['fiddieukhoan']
    
    send_hopdong_to_email(request,id,name,email,address,sdt,ngaybatdau,ngayketthuc,hinhthuc,payment,dieukhoan)
    
    data = {
        'messages' : "Please check your email for payment"
    }
    
    return JsonResponse(data)


def send_hopdong_to_email(request,id,tenkhachhang,email,address,sdt,ngaybatdau,ngayketthuc,hinhthuc,payment,dieukhoan):
    #get value to make nguoi dung
    nguoidunglist = nguoithuemodel.objects.filter().count()
    hopdonglist = HopdongModel.objects.filter().count()
    hinhthucthuelist = hinhthucmodel.objects.get(id_hinhthuc = hinhthuc)
    thongtinxe = xemodel.objects.get(id_xe = id)
    taixelist = taixemodel.objects.filter(tinhtrang = 1).first()
    #set variable 
    
    ten_khachhang = tenkhachhang
    diachiemail = email
    diachi = address 
    sodienthoai = sdt
    ngaybatdauthue = datetime.strptime(ngaybatdau,"%m/%d/%Y")
    ngayketthucthue = datetime.strptime(ngayketthuc,"%m/%d/%Y")
    if ngayketthucthue < ngaybatdauthue:
        messages.error(request,"Ngày kết thúc phải lớn hơn ngày bắt đầu")
    else:
        songay = ngayketthucthue - ngaybatdauthue
    phuongthucthanhtoan = thanhtoanmodel.objects.get(id_thanhtoan = payment)
    dieukhoanthuexe = dieukhoanmodel.objects.get(id_dieukhoan = dieukhoan)
    tongtien = (thongtinxe.giatien * int(songay.days))*Decimal(hinhthucthuelist.uudai)
    if "TX" in hinhthucthuelist.id_hinhthuc:
        tienhoahong = tongtien * Decimal(0.15)
        taixelist.tinhtrang = 0
        taixelist.save()
    else :
        tienhoahong = 0
        taixelist = taixemodel.objects.get(id_taixe = 'TX_00')
    currentdate = datetime.now()

    #create nguoithue
    nguoithue = nguoithuemodel()
    nguoithue.id_nguoithue = "NT_"+str(nguoidunglist+1)
    nguoithue.ten_nguoithue = ten_khachhang
    nguoithue.diachi = diachi
    nguoithue.email = diachiemail
    nguoithue.sdt = sodienthoai
    nguoithue.save()

    #create hopdong
    hopdong = HopdongModel()
    hopdong.id_hopdong = "HD_"+str(hopdonglist+1)
    request.session['fidhopdong'] = hopdong.id_hopdong
    hopdong.ten_hopdong = "Hợp đồng thuê xe "+ thongtinxe.ten_xe + hinhthucthuelist.ten_hinhthuc
    hopdong.songaythue = songay.days
    hopdong.ngaybatdau = ngaybatdauthue
    hopdong.ngayketthuc = ngayketthucthue
    hopdong.tongtien = round(tongtien)
    hopdong.tienhoahong = round(tienhoahong)
    hopdong.id_xe = thongtinxe
    hopdong.id_dieukhoan = dieukhoanthuexe
    hopdong.id_taixe = taixelist
    hopdong.id_nguoithue = nguoithue
    hopdong.id_thanhtoan = phuongthucthanhtoan
    hopdong.id_hinhthucthue = hinhthucthuelist
    hopdong.tinhtrang = 0
    hopdong.save()

    #sending email
    html_tpl_path = '../templates/hopdong/hopdong.html'
    context_data = {'hopdong':hopdong,'nguoithue':nguoithue,'ngaylaphoadon':currentdate,'hinhthucthue':hinhthucthuelist,'thongtinxe':thongtinxe,'taixe':taixelist,'ptthanhtoan':payment}
    email_html_template = get_template(html_tpl_path).render(context_data)
    receiver_email = nguoithue.email
    email_msg = EmailMessage('Chào mừng',
                                    email_html_template,
                                    settings.APPLICATION_EMAIL,
                                    [receiver_email],
                                    reply_to=[settings.APPLICATION_EMAIL])
    email_msg.content_subtype = 'html'
    email_msg.send(fail_silently=False)

def payment_paypal(request):
    hopdong_id = request.session['fidhopdong']
    hopdong = get_object_or_404(HopdongModel,id_hopdong = hopdong_id)
    host = request.get_host()
    paypal_dict = {
        'business': settings.PAYPAL_RECEIVER_EMAIL,
        'amount': hopdong.tongtien,
        'item_name': hopdong.ten_hopdong,
        'invoice': hopdong.id_hopdong,
        'currency_code': 'USD',
        'notify_url': f'http://{host}{reverse("paypal-ipn")}',
        'return_url': f'http://{host}{reverse("paypal-reverse")}',
        'cancel_return': f'http://{host}{reverse("paypal-cancel")}',
    }
    form = PayPalPaymentsForm(initial = paypal_dict)
    context = {'form':form}
    return render(request,'../templates/hopdong/paypalpayment.html',context)

def paypal_reverse(request):
    hopdong_id = request.session['fidhopdong']
    hopdong = get_object_or_404(HopdongModel,id_hopdong = hopdong_id)
    hopdong.tinhtrang = 1
    hopdong.save()
    messages.success(request,'Bạn đã thanh toán thành công')
    return redirect('/')
def paypal_cancel(request):
    messages.error(request,'Bạn đã hủy hợp đồng')
    return redirect('/')
