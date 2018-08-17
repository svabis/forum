# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0008_auto_20180817_0135'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ieraksts',
            name='date',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
        migrations.AlterField(
            model_name='tema',
            name='last_entry',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]
