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
        fields = ['name']

class MovieSchedulesSerializer(serializers.ModelSerializer):
    class Meta:
        model = MovieSchedules
        fields = ['name', 'time', 'room', 'movie']

class FoodSerializer(serializers.ModelSerializer):
    class Meta:
        model = Food
        fields = ['name', 'price']

class DrinkSerializer(serializers.ModelSerializer):
    class Meta:
        model = Drink
        fields = ['name', 'price']

class OrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Orders
        fields = ['food', 'drink']
