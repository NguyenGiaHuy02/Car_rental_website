# Generated by Django 4.1 on 2022-10-24 09:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('xe', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='xe',
            name='cameralui',
            field=models.IntegerField(db_column='CameraLui'),
        ),
        migrations.AlterField(
            model_name='xe',
            name='sacdienthoai',
            field=models.IntegerField(db_column='SacDienThoai'),
        ),
    ]
