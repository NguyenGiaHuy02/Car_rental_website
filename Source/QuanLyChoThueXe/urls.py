"""QuanLyChoThueXe URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.contrib import admin
from django.urls import include, path 
from apps.home import views as home
from django.conf.urls.static import static
from apps.xe import views as xes
from apps.hopdong import views as hopdongs
urlpatterns = [
    path('admin/', admin.site.urls),
    path('',home.get_home,name='home'),
    path('about/',home.get_about,name='about'),
    path('service/',home.get_service,name='service'),
    path('dsxe/<str:id>/',xes.get_danhsachxe),
    path('detail/<str:id>/',xes.get_chitietxe),
    path('search/',xes.get_dsxe_theoten,name='search'),
    path('thuexe/<str:id>',xes.get_thuexe,name='thuexe'),
    path('hopdong/',hopdongs.make_hopdong,name='hopdong'),
    path('paypal/',include('paypal.standard.ipn.urls')),
    path('payment/',hopdongs.payment_paypal,name='payment'),
    path('paypal-return/',hopdongs.paypal_reverse,name='paypal-reverse'),
    path('paypal-cancel/',hopdongs.paypal_cancel,name='paypal-cancel')




] 
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) 
urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
admin.site.site_header = "Trang quản trị"