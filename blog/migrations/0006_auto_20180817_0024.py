# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import blog.models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0005_auto_20180816_2125'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ieraksts',
            name='image',
            field=models.ImageField(null=True, upload_to=blog.models.upload_path, blank=True),
        ),
    ]
