# Radical Graphics Web Site
# (c)2014 Radical Graphics Studios
# Made with love in Amsterdam
#
from django.shortcuts import render, get_object_or_404, render_to_response

def home(request):

	page = 1
	context = {'page': page}

	return render(request, 'index.html', context)


