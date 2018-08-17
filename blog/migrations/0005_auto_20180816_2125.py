# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_auto_20180816_1941'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tema',
            name='title',
            field=models.TextField(max_length=500),
        ),
    ]
