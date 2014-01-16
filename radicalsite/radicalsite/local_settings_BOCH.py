
# Absolute path to the directory static files should be collected to.
# Don't put anything in this directory yourself; store your static files
# in apps' "static/" subdirectories and in STATICFILES_DIRS.
# Example: "/var/www/example.com/static/"
STATIC_ROOT = 'K:/Root/Radical Graphics Studios/GitHub/radical_web14/radicalsite/radicalsite/static'

MEDIA_ROOT = 'K:/Root/Radical Graphics Studios/GitHub/radical_web14/radicalsite/media'

MEDIA_URL = 'http://192.168.1.127:8010/media/'

# URL prefix for static files.
# Example: "http://example.com/static/", "http://static.example.com/"
STATIC_URL = 'http://192.168.1.127:8010/static/'

# Additional locations of static files
STATICFILES_DIRS = (
    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    # 'C:/Proyectos/GitHub/radical_web14/radicalsite/radicalsite/static',
    #os.path.join(os.path.dirname(__file__),'media').replace('\\','/'),
)