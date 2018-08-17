# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0036_auto_20180818_0117'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tema',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=100)),
                ('slug', models.SlugField(default=b'DzfvMqgjRr', unique=True)),
                ('last_entry', models.DateTimeField(default=django.utils.timezone.now)),
                ('entry_count', models.IntegerField(default=0)),
                ('coment', models.BooleanField(default=False)),
            ],
            options={
                'db_table': 'tema',
            },
        ),
        migrations.AlterField(
            model_name='supertema',
            name='slug',
            field=models.SlugField(default=b'txqJHKHiOS', unique=True),
        ),
        migrations.AddField(
            model_name='tema',
            name='relat_to_super',
            field=models.ForeignKey(default=1, to='blog.SuperTema'),
        ),
        migrations.AddField(
            model_name='ieraksts',
            name='relat_to',
            field=models.ForeignKey(default=1, to='blog.Tema'),
        ),
    ]
