# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0016_auto_20180817_1740'),
    ]

    operations = [
        migrations.AddField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'eHdfHjmO', unique=True),
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'pVRuAmQK', unique=True),
        ),
    ]
