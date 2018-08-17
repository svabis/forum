# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0033_auto_20180818_0052'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tema',
            name='parent',
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'WQyEiBvbhV', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'JnPPyvEmKw', unique=True),
        ),
    ]
