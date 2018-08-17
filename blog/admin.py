# -*- coding: utf-8 -*-
from django.contrib import admin
from blog.models import Tema, Ieraksts


class TemaAdmin(admin.ModelAdmin):
    list_display = ['title', 'last_entry', 'entry_count']
    list_filter = ['last_entry']


class IerakstsAdmin(admin.ModelAdmin):
    list_display = ['relat_to', 'user', 'date', 'text'] # image
    list_filter = ['date']


admin.site.register(Tema, TemaAdmin)
admin.site.register(Ieraksts, IerakstsAdmin)
