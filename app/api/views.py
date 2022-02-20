from django.shortcuts import render
from django.http import HttpResponse
from .models import *
from rest_framework import viewsets
from rest_framework import permissions
from rest_framework import filters
from .serializers import *

# Create your views here.
# def index(request):
#     return HttpResponse('Hola Clase')

class MovieViewSet(viewsets.ModelViewSet):
    search_fields = ['name', 'description']
    filter_backends = (filters.SearchFilter,)
    queryset = Movie.objects.all()
    serializer_class = MovieSerializer
    
class MovieCategoriesViewSet(viewsets.ModelViewSet):
    queryset = MovieCategories.objects.all()
    serializer_class = MovieCategoriesSerializer
