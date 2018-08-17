# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0009_auto_20180817_0144'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ieraksts',
            name='date',
            field=models.DateTimeField(),
        ),
        migrations.AlterField(
            model_name='ieraksts',
            name='text',
            field=models.CharField(max_length=500),
        ),
        migrations.AlterField(
            model_name='tema',
            name='title',
            field=models.TextField(max_length=100),
        ),
    ]
