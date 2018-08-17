# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0037_auto_20180818_0118'),
    ]

    operations = [
        migrations.AddField(
            model_name='tema',
            name='parent',
            field=models.ForeignKey(blank=True, to='blog.Tema', null=True),
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'iPrkjNbmBz', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'ecpUPlZCKZ', unique=True),
        ),
    ]
