from django.shortcuts import render 
from django.http import HttpResponse

# Create your views here.
# request handlers
# request -> response

def say_hello(request):
    return render(request, 'contact.html', {'contact': 'David'}) 