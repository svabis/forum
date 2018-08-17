# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0038_auto_20180818_0121'),
    ]

    operations = [
        migrations.RenameField(
            model_name='ieraksts',
            old_name='relat_to',
            new_name='relate_to',
        ),
        migrations.RenameField(
            model_name='tema',
            old_name='relat_to_super',
            new_name='relate_to_super',
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'SzFYjXVFoB', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'ZUNTrUUXua', unique=True),
        ),
    ]
