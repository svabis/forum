# -*- coding: utf-8 -*-
from blog.models import Tema, Ieraksts

# IMPORT DJANGO STUFF
from django.core.management.base import BaseCommand, CommandError

class Command(BaseCommand):
    def handle(self, *args, **options):

        temas = Tema.objects.all()

        for t in temas:
            temp_i = Ieraksts.objects.filter(relate_to = t)
            count = temp_i.count()

            t.entry_count = count
            t.save()
