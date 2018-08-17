# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0013_supertema'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ieraksts',
            name='date',
            field=models.DateTimeField(default=datetime.datetime(2018, 8, 17, 17, 21, 35, 618257)),
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'cfOYMvwV', unique=True),
        ),
    ]
