# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0012_auto_20180817_0206'),
    ]

    operations = [
        migrations.CreateModel(
            name='SuperTema',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.TextField(max_length=100)),
                ('slug', models.SlugField(default=b'zGoNbFgk', unique=True)),
            ],
            options={
                'db_table': 'super_tema',
            },
        ),
    ]
