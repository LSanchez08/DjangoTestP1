from .models import *
from rest_framework import serializers

class MovieSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movie
        fields = ['id', 'name', 'description', 'ranking', 'category']

    def to_representation(self, instance):
        ret = super().to_representation(instance)
        return {
            'id': ret['id'],
            'name': ret['name'],
            'ranking': ret['ranking'],
            'description': ret['description'],
            'category_id': ret['category']
        }

class MovieCategoriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = MovieCategories
        fields = ['id', 'name']

class MovieSchedulesSerializer(serializers.ModelSerializer):
    class Meta:
        model = MovieSchedules
        fields = ['id', 'time', 'room', 'movie']

class FoodSerializer(serializers.ModelSerializer):
    class Meta:
        model = Food
        fields = ['id', 'name', 'price']

class DrinkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Drink
        fields = ['id', 'name', 'price']

class OrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Orders
        fields = ['id', 'food', 'drink']

class TicketSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tickets
        fields = ['id', 'single_price', 'quantity_bought', 'schedule']
