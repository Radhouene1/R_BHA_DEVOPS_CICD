from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse


def homePageView(request):
    return HttpResponse('Test DEVOPS pipeline ;p !')