# Functions controlling the AJAX requests
# (c) 2013 Radical Graphics Studios
from radicalwebapp.models import Portfolio
from dajax.core import Dajax
from dajaxice.core import dajaxice_functions
from dajaxice.decorators import dajaxice_register

from radicalwebapp import views
from django.conf import settings
# from imagekit.cachefiles import ImageCacheFile

@dajaxice_register
def get_portfolio(request, page):

	dajax = Dajax()

	pictures = Portfolio.objects.all()

	ids_to_get_to = page * 8 
	ids_to_get_from = ((page - 1) * 8)

	# pics_range = list(range(ids_to_get_from, ids_to_get_to))
	print pictures
	# html = "<div id='Grid' class='project-wrapper'>"
	html = ""
	for pic in pictures:
		html += "<div class='project " + pic.tag + "'> <img src='" + pic.image.url + "' alt=''>"
		html += "	<div class='hover'>"
		html += "		<h5>" + pic.platform + "</h5>"
		html += "		<p>" + pic.name + "</p>"
		html += "		<a href='" + pic.image.url + "' data-rel='prettyPhoto' class='btn'><b class='icon-search'></b></a>"
		html += "	</div>"
		html += "</div>"

	# html += "</div>"
	print html
	dajax.assign('#portfolio_pics', 'innerHTML', html)

	return dajax.json()
