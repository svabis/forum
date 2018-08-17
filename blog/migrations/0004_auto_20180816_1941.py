# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_tema_entry_count'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ieraksts',
            name='image',
            field=models.ImageField(null=True, upload_to=b'forum_img/', blank=True),
        ),
        migrations.AlterField(
            model_name='tema',
            name='title',
            field=models.CharField(max_length=500),
        ),
    ]
