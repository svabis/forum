# -*- coding: utf-8 -*-
from django.conf.urls import patterns, include, url

from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings        # FOR STATIC AND MEDIA FILE ACCESS

from django.contrib.auth.decorators import login_required # LOGIN
from django.contrib import admin


admin.autodiscover()
admin.site.login = login_required(admin.site.login)

urlpatterns = [
# STATIC AND MEDIA
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT,}),
    url(r'^static/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.STATIC_ROOT,}),

# ADMIN
    url(r'^admin9876/', include(admin.site.urls)),

# LOGIN
    url(r'^auth/', include('loginsys.urls')),

# MAIN --> Visas Tema ar comment=True
    url(r'^page=(?P<pageid>\d+)/$', 'blog.views.main'),

# ADD TEMA
    url(r'^add_tema/$', 'blog.views.add_tema'),

# temas diskusijas + add Ieraksts
#    url(r'^(?P<s_id>[-\w]+)/(?P<t_id>[-\w]+)/(?P<pageid>\d+)/$', 'blog.views.temas'),
#    url(r'^(?P<s_id>[-\w]+)/(?P<t_id>[-\w]+)/$', 'blog.views.temas'),
    url(ur'^(?P<s_id>[-\w]+)/(?P<t_id>.+)/(?P<pageid>\d+)/$', 'blog.views.temas'),
    url(ur'^(?P<s_id>[-\w]+)/(?P<t_id>.+)/$', 'blog.views.temas'),

# SuperTema izvele
    url(r'^(?P<s_id>[-\w]+)/$', 'blog.views.super'),

# MAIN --> Visas Tema ar comment=True
    url(r'^', 'blog.views.main'),
]


