# Generated by Django 4.1 on 2022-10-28 09:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('nguoithue', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='nguoithue',
            name='email',
            field=models.CharField(db_column='Email', max_length=40),
        ),
    ]