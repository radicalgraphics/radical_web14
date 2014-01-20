# Functions controlling the AJAX requests
# (c) 2013 Radical Graphics Studios
from radicalwebapp.models import Portfolio
from dajax.core import Dajax
from dajaxice.core import dajaxice_functions
from dajaxice.decorators import dajaxice_register

from radicalwebapp import views
from django.conf import settings

@dajaxice_register
def get_portfolio(request, page, tag):

	dajax = Dajax()

	ids_to_get_to = int(page) * 8 
	ids_to_get_from = ((int(page) - 1) * 8)

	if (tag == "all"):
		pictures = Portfolio.objects.all().order_by('-featured')
		portfolio_length = Portfolio.objects.all().count()
	else:
		pictures = Portfolio.objects.filter(tag=tag).all().order_by('-featured')
		portfolio_length = Portfolio.objects.filter(tag=tag).count()
	
	html = ""
	for pic in pictures[ids_to_get_from:ids_to_get_to]:
		
		str_len = len(pic.name)
		if str_len > 15:
			pic_name = pic.name[0:15] + "..."
		else:
			pic_name = pic.name

		html += "<div class='project " + pic.tag + " mix_all' style='display: inline-block; opacity: 1;'> <img src='" + pic.image.url + "' alt=''>"
		html += "	<div class='hover'>"
		html += "		<h5>" + pic_name + "</h5>"
		html += "		<p>" + pic.platform + "</p>"
		html += "		<a href='" + pic.image_big.url + "' class='btn fancybox' title='"+ pic.name + " - " + pic.platform + "'><b class='icon-search'></b></a>"
		html += "	</div>"
		html += "</div>"

	if (portfolio_length<ids_to_get_to):
		ids_to_get_to = portfolio_length

	html += "<input type='hidden' value='" + str(page) + "' id='next_page'>"
	html += "<input type='hidden' value='" + str(ids_to_get_to) + "' id='last_id'>"
	html += "<input type='hidden' value='" + str(portfolio_length) + "' id='portfolio_length'>"
	html += "<script>"
	html += "	eval($('.fancybox')"
	html += "		.fancybox({"
	html += "			fitToView : false,"
	html += "			autoResize : true,"
	html += "			maxHeight : '80%',"
	html += "			overlayShow : true,"
	html += "			overlayOpacity : 0.5,"
	html += " 			padding : 0,"
	html += " 			openEffect:'elastic',"
	html += " 			closeBtn  : true,"
	html += " 			helpers : {"
	html += "				title:{"
	html += "					type : 'over'"
	html += "				},"
	html += "				overlay : {"
	html += "					css : {"
	html += "						'background' : 'rgba(0,0,0,0.8)',"
	html += "					}"
	html += "				},"
	html += "			}"
	html += "		})"
	html += "	)"
	html += "</script>"

	dajax.assign('#portfolio_pics', 'innerHTML', html)

	return dajax.json()
