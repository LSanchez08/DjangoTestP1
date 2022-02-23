# Generated by Django 4.0.2 on 2022-02-23 20:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0007_delete_tickets'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tickets',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('single_price', models.IntegerField(verbose_name=3)),
                ('quantity_bought', models.IntegerField(verbose_name=2)),
                ('schedule', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='api.movieschedules')),
            ],
        ),
    ]
