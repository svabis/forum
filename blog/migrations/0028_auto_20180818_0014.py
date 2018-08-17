# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0027_auto_20180818_0013'),
    ]

    operations = [
        migrations.RenameField(
            model_name='tema',
            old_name='comment',
            new_name='coment',
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'julaypsOvJ', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'RageYzspKn', unique=True),
        ),
    ]
