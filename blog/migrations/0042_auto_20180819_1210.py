# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('blog', '0041_auto_20180819_1210'),
    ]

    operations = [
        migrations.AddField(
            model_name='ieraksts',
            name='user',
            field=models.ForeignKey(default=1, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'xtynhvukcB', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'fBWAXWStgJ', unique=True),
        ),
    ]
