# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0025_auto_20180817_2322'),
    ]

    operations = [
        migrations.AddField(
            model_name='tema',
            name='comment',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='tema',
            name='relat_to',
            field=models.ForeignKey(blank=True, to='blog.Tema', null=True),
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'yZLUgoVaMQ', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'dHbyKRXzGs', unique=True),
        ),
    ]
