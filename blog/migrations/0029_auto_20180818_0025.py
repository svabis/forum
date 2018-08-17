# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0028_auto_20180818_0014'),
    ]

    operations = [
        migrations.AddField(
            model_name='tema',
            name='relat_to_super',
            field=models.ForeignKey(default=1, to='blog.SuperTema'),
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'QWODnKonDW', unique=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='slug',
            field=models.SlugField(default=b'TziiWevDiu', unique=True),
        ),
    ]
