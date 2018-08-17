from django.conf.urls import patterns, include, url

from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings        # FOR STATIC AND MEDIA FILE ACCESS

#from django.contrib.auth.decorators import login_required # LOGIN
from django.contrib import admin


admin.autodiscover()
#admin.site.login = login_required(admin.site.login)

urlpatterns = [
    # Examples:
    # url(r'^$', 'main.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

# STATIC AND MEDIA
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT,}),
    url(r'^static/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.STATIC_ROOT,}),

# ADMIN
    url(r'^admin9876/', include(admin.site.urls)),

# pievienot diskusijas ierakstu
#    url(r'^tema/(?P<t_id>\d+)/add/$', 'blog.views.temas'),

# temas diskusijas
    url(r'^tema/(?P<t_id>\d+)/(?P<pageid>\d+)$', 'blog.views.temas'),
    url(r'^tema/(?P<t_id>\d+)/$', 'blog.views.temas'),

# MAIN --> temas
    url(r'^(?P<pageid>\d+)/$', 'blog.views.main'),
    url(r'^', 'blog.views.main'),
]


