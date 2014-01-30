__author__ = 'Radical Graphics'

from django.contrib import admin

from django import forms
from redactor.widgets import RedactorEditor

from radicalwebapp.models import Portfolio, Post, PostAdmin, Comment, CommentAdmin, HowWeWork, Tags, Author

class PostAdminForm(forms.ModelForm):

	class Meta:
		model = Post
		widgets = {
			'body' : RedactorEditor(),
		}

class PostAdmin(admin.ModelAdmin):
	form = PostAdminForm
	

admin.site.register(Post, PostAdmin)
admin.site.register(Comment, CommentAdmin)
admin.site.register(Portfolio)
admin.site.register(HowWeWork)
admin.site.register(Tags)
admin.site.register(Author)