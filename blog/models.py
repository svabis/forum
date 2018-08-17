# -*- coding: utf-8 -*-
from django.utils import timezone
from django.db import models

import os
import datetime

import random
import string

def rand_slug():
    return ''.join(random.choice(string.ascii_letters) for _ in range(8))

from slugify import slugify

def upload_path(instance, filename):
#    ext = filename.split('.')[-1]
    filename =  slugify(unicode(filename))
    return os.path.join('forum_img/', filename)


# =================================================================================================================
class SuperTema(models.Model):
    class Meta():
        db_table = "super_tema"

    title = models.TextField( max_length = 100 )
    slug = models.SlugField( unique = True, default=rand_slug() )

#    last_entry = models.DateTimeField( default = timezone.now )
#    entry_count = models.IntegerField( default = 0 )


# =================================================================================================================
class Tema(models.Model):
    class Meta():
        db_table = "tema"

    title = models.TextField( max_length = 100 )

#    slug = 

    last_entry = models.DateTimeField( default = timezone.now )
    entry_count = models.IntegerField( default = 0 )


# =================================================================================================================
class Ieraksts(models.Model):
    class Meta():
        db_table = "ieraksts"

    relat_to = models.ForeignKey( Tema, default = 1 )
    user = models.CharField( max_length = 20 )
    date = models.DateTimeField( default = timezone.now )
    text = models.CharField( max_length = 500 )

    image = models.ImageField( blank = True, null = True, upload_to = upload_path)
