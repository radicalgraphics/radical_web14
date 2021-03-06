# Radical Graphics Web Site
# (c)2014 Radical Graphics Studios
# Made with love in Amsterdam
#

from django.shortcuts import render, get_object_or_404, render_to_response


### Imports for the blog pages
import time
from calendar import month_name

from django.middleware.csrf import get_token

from django.http import HttpResponseRedirect, HttpResponse

from django.contrib.auth.decorators import login_required
from django.core.context_processors import csrf
from django.core.paginator import Paginator, InvalidPage, EmptyPage
from django.core.urlresolvers import reverse
from django.conf import settings

from radicalwebapp.models import *
from django.forms import ModelForm

### Views for blog
class CommentForm(ModelForm):
    class Meta:
        model = Comment
        exclude = ["post"]


def post(request, slug):
    """Single post with comments and a comment form."""
    post = Post.objects.get(slug=slug)
    comments = Comment.objects.filter(post=post)
    
    ## we update the view count
    post.views = post.views + 1
    post.save()

    if request.user.is_authenticated():
        user = request.user
    else:
        user = User.objects.get(username='Guest')

    context={'post':post,
             'comments':comments,
             'form':CommentForm(),
             'user':user,
    }

    #context.update(csrf(request))

    #return render_to_response('blog/post.html', context)

    return render(request, 'blog/post.html', context)

    #d = dict(post=post, comments=comments, form=CommentForm(), user=request.user)
    #d.update(csrf(request))

    #return render_to_response("blog/post.html", d)

def delete_comment(request, post_pk, pk=None):
    """Delete comment(s) with primary key `pk` or with pks in POST."""
    if request.user.is_staff:
        if not pk: pklst = request.POST.getlist("delete")
        else: pklst = [pk]

        for pk in pklst:
            Comment.objects.get(pk=pk).delete()
        return HttpResponseRedirect(reverse("radicalwebapp.views.post", args=[post_pk]))

def add_comment(request, pk):
    """Add a new comment."""
    p = request.POST

    if p.has_key("body") and p["body"]:
        author = "Anonymous"
        if p["author"]: author = p["author"]
        comment = Comment(post=Post.objects.get(pk=pk))

        # save comment form
        cf = CommentForm(p, instance=comment)
        cf.fields["author"].required = False
        comment = cf.save(commit=False)

        # save comment instance
        comment.author = author
        notify = True
        if request.user.username == "ak": notify = False
        comment.save(notify=notify)
    return HttpResponseRedirect(reverse("radicalwebapp.views.post", args=[pk]))

def mkmonth_lst():
    """Make a list of months to show archive links."""
    if not Post.objects.count(): return []

    # set up vars
    year, month = time.localtime()[:2]
    first = Post.objects.order_by("created")[0]
    fyear = first.created.year
    fmonth = first.created.month
    months = []

    # loop over years and months
    for y in range(year, fyear-1, -1):
        start, end = 12, 0
        if y == year: start = month
        if y == fyear: end = fmonth-1

        for m in range(start, end, -1):
            months.append((y, m, month_name[m]))
    return months

def month(request, year, month):
    """Monthly archive."""
    posts = Post.objects.filter(created__year=year, created__month=month)
    return render_to_response("blog/list.html", dict(post_list=posts, user=request.user,
                                                months=mkmonth_lst(), archive=True))

def main(request):
    """Main listing."""

    get_token(request)

    posts = Post.objects.all().order_by("-created")
    paginator = Paginator(posts, 5)
    try: page = int(request.GET.get("page", '1'))
    except ValueError: page = 1

    try:
        posts = paginator.page(page)
    except (InvalidPage, EmptyPage):
        posts = paginator.page(paginator.num_pages)


    if request.user.is_authenticated():
        user = request.user
    else:
        user = User.objects.get(username='Guest')


    context = { 'posts':posts,
                'user':user,
                'post_list':posts.object_list,
                'months':mkmonth_lst(),
                'STATIC_URL' : settings.STATIC_URL
                }

    context.update(csrf(request))

    return render_to_response('blog/list.html', context)

    #return render_to_response("blog/list.html", dict(posts=posts, user=request.user,post_list=posts.object_list, months=mkmonth_lst()))
    #return render(request, 'blog/list.html', context)



#### fin de blog

def home(request):

    get_token(request)

    how_we_work = get_object_or_404(HowWeWork)

    page = 1

    context = { 'page': page,
                'how_we_work':how_we_work
                }

    return render(request, 'index.html', context)


