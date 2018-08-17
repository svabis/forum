# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0032_auto_20180818_0050'),
    ]

    operations = [
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'LGpxVdJYXq', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='parent',
            field=models.ForeignKey(verbose_name=b'child', blank=True, to='blog.Tema', null=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'xwtGuimFZl', unique=True),
        ),
    ]
