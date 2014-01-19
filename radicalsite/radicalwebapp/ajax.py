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
def get_portfolio(request, page, tag):

	dajax = Dajax()

	ids_to_get_to = int(page) * 8 
	ids_to_get_from = ((int(page) - 1) * 8)

	if (tag == "all"):
		pictures = Portfolio.objects.all()
		portfolio_length = Portfolio.objects.all().count()
	else:
		pictures = Portfolio.objects.filter(tag=tag).all()
		portfolio_length = Portfolio.objects.filter(tag=tag).count()
	

	print str(page) + "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< PAGE >>>>>>>>>>>>>"
	print str(portfolio_length) + "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< pictures_length"
	print str(ids_to_get_to) + "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ids_to_get_to"

	html = ""
	for pic in pictures[ids_to_get_from:ids_to_get_to]:

		html += "<div class='project " + pic.tag + " mix_all' style='display: inline-block; opacity: 1;'> <img src='" + pic.image.url + "' alt=''>"
		html += "	<div class='hover'>"
		html += "		<h5>" + pic.platform + "</h5>"
		html += "		<p>" + pic.name + "</p>"
		html += "		<a href='" + pic.image.url + "' class='btn fancybox'><b class='icon-search'></b></a>"
		html += "	</div>"
		html += "</div>"



	if (portfolio_length<ids_to_get_to):
		ids_to_get_to = portfolio_length

	html += "<input type='hidden' value='" + str(page) + "' id='next_page'>"
	html += "<input type='hidden' value='" + str(ids_to_get_to) + "' id='last_id'>"
	html += "<input type='hidden' value='" + str(portfolio_length) + "' id='portfolio_length'>"
	html += "<script>eval($('.fancybox').fancybox({closeBtn  : true,}))</script>"

	dajax.assign('#portfolio_pics', 'innerHTML', html)
	
	

	return dajax.json()
