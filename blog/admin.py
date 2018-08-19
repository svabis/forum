# -*- coding: utf-8 -*-
from django.contrib import admin
from blog.models import SuperTema, Tema, Ieraksts


class TemaAdmin(admin.ModelAdmin):
# IF REMARK IS REMOVED --> ADMIN CRASHES
#    prepopulated_fields = {'slug': ('title')}
    list_display = ['relate_to_super', 'parent', 'comment', 'title', 'slug', 'last_entry', 'entry_count']
    list_filter = ['last_entry', 'comment', 'relate_to_super']


class SuperTemaAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('title',),}
    list_display = ['order', 'title', 'slug']


class IerakstsAdmin(admin.ModelAdmin):
    list_display = ['relate_to', 'user', 'date', 'text']
    list_filter = ['date']


admin.site.register(SuperTema, SuperTemaAdmin)
admin.site.register(Tema, TemaAdmin)
admin.site.register(Ieraksts, IerakstsAdmin)
