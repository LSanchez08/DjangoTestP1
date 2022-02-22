from django.db import models

# Create your models here.

class MovieCategories(models.Model):
    name = models.CharField(max_length=250)

class Movie(models.Model):
    name = models.CharField(max_length=250)
    description = models.CharField(max_length=2000)
    ranking = models.IntegerField(1)
    category = models.ForeignKey(MovieCategories, on_delete=models.PROTECT)

class MovieSchedules(models.Model):
    name = models.CharField(max_length=250)
    time = models.CharField(max_length=10)
    room = models.IntegerField(1)
    movie = models.ForeignKey(Movie, on_delete=models.PROTECT)

class Food(models.Model):
    name = models.CharField(max_length=250)
    price = models.IntegerField(1)

class Drink(models.Model):
    name = models.CharField(max_length=250)
    price = models.IntegerField(1)

class Orders(models.Model):
    food = models.ForeignKey(Food, on_delete=models.PROTECT)
    drink = models.ForeignKey(Drink, on_delete=models.PROTECT)
