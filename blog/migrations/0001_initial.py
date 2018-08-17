# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Ieraksts',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('user', models.CharField(max_length=20)),
                ('date', models.DateTimeField(default=django.utils.timezone.now)),
                ('text', models.CharField(max_length=150)),
                ('image', models.ImageField(null=True, upload_to=b'forum_img', blank=True)),
            ],
            options={
                'db_table': 'ieraksts',
            },
        ),
        migrations.CreateModel(
            name='Tema',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=100)),
                ('last_entry', models.DateTimeField(default=django.utils.timezone.now)),
                ('page_count', models.IntegerField(default=0)),
            ],
            options={
                'db_table': 'tema',
            },
        ),
        migrations.AddField(
            model_name='ieraksts',
            name='relat_to',
            field=models.ForeignKey(default=1, to='blog.Tema'),
        ),
    ]
