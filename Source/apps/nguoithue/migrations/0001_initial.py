# Generated by Django 4.1 on 2022-10-02 08:32

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('taikhoan', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Nguoithue',
            fields=[
                ('id_nguoithue', models.CharField(db_column='id_NguoiThue', max_length=10, primary_key=True, serialize=False)),
                ('ten_nguoithue', models.CharField(db_column='Ten_NguoiThue', max_length=30)),
                ('sdt', models.CharField(db_column='SDT', max_length=11)),
                ('diachi', models.CharField(db_column='DiaChi', max_length=50)),
                ('email', models.CharField(db_column='Email', max_length=20)),
                ('id_taikhoan', models.ForeignKey(db_column='id_TaiKhoan', on_delete=django.db.models.deletion.PROTECT, to='taikhoan.taikhoan')),
            ],
            options={
                'db_table': 'nguoithue',
                'managed': True,
            },
        ),
    ]
