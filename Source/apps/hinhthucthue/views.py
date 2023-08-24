from django.shortcuts import render
from .models import Hinhthucthue as hinhthucthuemodel
import pdb

# Create your views here.
def get_hinhthuc(request):
    hinhthucthue_list = hinhthucthuemodel.objects.get(id_hinhthuc ='TL01')
    pdb.set_trace
    return render(request,'home/home.html',{'hinhthucthue_list' : hinhthucthue_list})

