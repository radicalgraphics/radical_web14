from django.conf.urls import patterns, include, url

from radicalwebapp import views

from django.conf import settings

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

from dajaxice.core import dajaxice_autodiscover, dajaxice_config
dajaxice_autodiscover()

urlpatterns = patterns('',
    
    url(r'^static/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.STATIC_ROOT}),
    url(r'^$', 'radicalwebapp.views.home', name='home'),
    # url(r'^radicalsite/', include('radicalsite.foo.urls')),

    url(r'^(\d+)/$', "post"),
   url(r'^add_comment/(\d+)/$', "add_comment"),
   url(r'^delete_comment/(\d+)/$', "delete_comment"),
   url(r'^delete_comment/(\d+)/(\d+)/$', "delete_comment"),
   url(r'^month/(\d+)/(\d+)/$', "month"),
    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}),
    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(dajaxice_config.dajaxice_url, include('dajaxice.urls')),
)
