# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0035_auto_20180818_0101'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tema',
            name='relat_to_super',
        ),
        migrations.RemoveField(
            model_name='ieraksts',
            name='relat_to',
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'CXvdZQZZLm', unique=True),
        ),
        migrations.DeleteModel(
            name='Tema',
        ),
    ]
