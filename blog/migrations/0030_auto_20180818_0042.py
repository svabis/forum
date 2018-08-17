# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0029_auto_20180818_0025'),
    ]

    operations = [
        migrations.RenameField(
            model_name='tema',
            old_name='relat_to',
            new_name='parent',
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'gcGkSPMBHA', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'doeJyVhcei', unique=True),
        ),
    ]
