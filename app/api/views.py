from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
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
    search_fields = ['name']
    queryset = MovieCategories.objects.all()
    serializer_class = MovieCategoriesSerializer

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)

        return JsonResponse({ 'detail': 'Object Deleted' })


class MovieSchedulesViewSet(viewsets.ModelViewSet):
    search_fields = ['movie']
    queryset = MovieSchedules.objects.all()
    serializer_class = MovieSchedulesSerializer

class FoodViewSet(viewsets.ModelViewSet):
    search_fields = ['name']
    queryset = Food.objects.all()
    serializer_class = FoodSerializer

class DrinkViewSet(viewsets.ModelViewSet):
    search_fields = ['name']
    queryset = Drink.objects.all()
    serializer_class = DrinkSerializer

class OrdersViewSet(viewsets.ModelViewSet):
    queryset = Orders.objects.all()
    serializer_class = OrderSerializer

class TicketViewSet(viewsets.ModelViewSet):
    queryset = Tickets.objects.all()
    serializer_class = TicketSerializer
