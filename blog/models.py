# -*- coding: utf-8 -*-
from django.utils import timezone
from django.db import models

from django.contrib.auth.models import User # autorisation library

import os
import datetime

import random
import string

def rand_slug(instance):
    return ''.join(random.choice(string.ascii_letters) for _ in range(10))

from slugify import slugify

def upload_path(instance, filename):
    return os.path.join('forum_img/', slugify(unicode(filename)) )


# =================================================================================================================
class SuperTema(models.Model):
    class Meta():
        db_table = "super_tema"

    order = models.IntegerField( default = 0 )
    title = models.CharField( max_length = 100 )
    slug = models.SlugField( unique = True, max_length=50, default=rand_slug(title) )

    def __unicode__(self):
        return u'%s' % (self.title)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        super(SuperTema, self).save(*args, **kwargs)

# =================================================================================================================
class Tema(models.Model):
    class Meta():
        db_table = "tema"

    relate_to_super = models.ForeignKey( SuperTema, default=1 )
    parent = models.ForeignKey( 'Tema', blank=True, null=True )

    created_by = models.ForeignKey( User, default = 1 )
    created_date = models.DateTimeField( default = timezone.now )

    title = models.CharField( max_length = 100 )
    slug = models.SlugField( unique = True, max_length=50, default=rand_slug(title) )
    last_entry = models.DateTimeField( default = timezone.now )
    entry_count = models.IntegerField( default = 0 )

    comment = models.BooleanField( default=False ) # coments enabled

    def __unicode__(self):
        return u'%s' % (self.title)


# =================================================================================================================
class Ieraksts(models.Model):
    class Meta():
        db_table = "ieraksts"

    relate_to = models.ForeignKey( Tema, default = 1 )

    user = models.ForeignKey( User, default = 1 )
#    user = models.CharField( max_length = 20 )

    date = models.DateTimeField( default = timezone.now )
    text = models.TextField( max_length = 500 )

    image = models.ImageField( blank = True, null = True, upload_to = upload_path)
