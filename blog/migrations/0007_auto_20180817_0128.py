# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0006_auto_20180817_0024'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tema',
            name='last_entry',
            field=models.DateTimeField(default=datetime.datetime(2018, 8, 17, 1, 28, 9, 551152)),
        ),
    ]
