# Generated by Django 4.1 on 2022-10-24 08:45

import django.core.files.storage
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('model', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='model',
            name='hinhanh',
            field=models.ImageField(db_column='HinhAnh', storage=django.core.files.storage.FileSystemStorage(location='/media/img/car-image'), upload_to=''),
        ),
    ]