# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0023_auto_20180817_2314'),
    ]

    operations = [
        migrations.AddField(
            model_name='supertema',
            name='order',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'tPuuBcZgNk', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'vANATxWfEK', unique=True),
        ),
    ]
