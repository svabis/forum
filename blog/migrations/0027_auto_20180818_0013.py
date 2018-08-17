# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0026_auto_20180818_0012'),
    ]

    operations = [
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'XcplxceYlp', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'EiJYSYjcRN', unique=True),
        ),
    ]
