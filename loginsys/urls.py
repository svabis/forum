# -*- coding: utf-8 -*-
from django.conf.urls import patterns, include, url

urlpatterns = [
   # LOGIN / LOGOUT
    url(r'^login/$', 'loginsys.views.login',),
    url(r'^logout/$', 'loginsys.views.logout',),

   # REGISTRATION
#    url(r'^register/$', 'loginsys.views.register',),

]
