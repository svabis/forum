# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_remove_tema_page_count'),
    ]

    operations = [
        migrations.AddField(
            model_name='tema',
            name='entry_count',
            field=models.IntegerField(default=0),
        ),
    ]
