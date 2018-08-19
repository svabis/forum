# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('blog', '0042_auto_20180819_1210'),
    ]

    operations = [
        migrations.AddField(
            model_name='tema',
            name='created_by',
            field=models.ForeignKey(default=1, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='tema',
            name='created_date',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'FcaBCeSbtR', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'uCcBLeTmJZ', unique=True),
        ),
    ]
