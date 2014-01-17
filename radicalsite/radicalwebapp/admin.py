__author__ = 'Radical Graphics'

from django.contrib import admin

from radicalwebapp.models import Portfolio, Post, PostAdmin, Comment, CommentAdmin

admin.site.register(Post, PostAdmin)
admin.site.register(Comment, CommentAdmin)

admin.site.register(Portfolio)