# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0011_auto_20180817_0205'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ieraksts',
            name='date',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]
