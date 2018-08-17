# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0024_auto_20180817_2319'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ieraksts',
            name='text',
            field=models.TextField(max_length=500),
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'puesazCCrT', unique=True),
        ),
        migrations.AlterField(
            model_name='supertema',
            name='title',
            field=models.CharField(max_length=100),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'yjkzyIxOsz', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='title',
            field=models.CharField(max_length=100),
        ),
    ]
