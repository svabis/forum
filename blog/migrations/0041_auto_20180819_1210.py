# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0040_auto_20180818_0150'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='ieraksts',
            name='user',
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'iMKGSvCnAE', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'gbuHTfDPBg', unique=True),
        ),
    ]
