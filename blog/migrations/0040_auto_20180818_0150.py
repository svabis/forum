# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0039_auto_20180818_0136'),
    ]

    operations = [
        migrations.RenameField(
            model_name='tema',
            old_name='coment',
            new_name='comment',
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'odMiIxQdoz', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'xwTrjRCgFx', unique=True),
        ),
    ]
