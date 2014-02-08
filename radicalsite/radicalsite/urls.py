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

    # url(r'^post/(\d+)/$', 'radicalwebapp.views.post',name="post"),
    url(r'^post/(?P<slug>[\w\-]+)/$', 'radicalwebapp.views.post'),
    url(r'^add_comment/(\d+)/$', 'radicalwebapp.views.add_comment', name="add_comment"),
    url(r'^delete_comment/(\d+)/$', 'radicalwebapp.views.delete_comment', name="delete_comment"),
    url(r'^delete_comment/(\d+)/(\d+)/$', 'radicalwebapp.views.delete_comment',  name="delete_comment"),
    url(r'^month/(\d+)/(\d+)/$', 'radicalwebapp.views.month',  name="month"),
    url(r'^blog/', 'radicalwebapp.views.main', name='main'),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}),
    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(dajaxice_config.dajaxice_url, include('dajaxice.urls')),

    #Redactor URLS
    url(r'^redactor/', include('redactor.urls')),
)
