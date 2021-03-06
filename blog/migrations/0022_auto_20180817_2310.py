# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0021_auto_20180817_2304'),
    ]

    operations = [
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'ihmjObGQtP', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'rDSBpCiBrW', unique=True),
        ),
    ]
