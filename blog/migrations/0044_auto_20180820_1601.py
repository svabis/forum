# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0043_auto_20180819_1515'),
    ]

    operations = [
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'HxWyqviSeV', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'WzVwjfcEYJ', unique=True),
        ),
    ]
