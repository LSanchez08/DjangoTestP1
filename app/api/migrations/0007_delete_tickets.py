# Generated by Django 4.0.2 on 2022-02-23 20:04

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0006_rename_ticketsold_tickets'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Tickets',
        ),
    ]
