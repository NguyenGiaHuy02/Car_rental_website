# Generated by Django 4.1 on 2022-10-30 09:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('xe', '0005_alter_xe_giatien'),
    ]

    operations = [
        migrations.AlterField(
            model_name='xe',
            name='giatien',
            field=models.DecimalField(db_column='DonGia', decimal_places=2, default=0, max_digits=10),
        ),
    ]
