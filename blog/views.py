# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.shortcuts import render_to_response, redirect # response to template, redirect to another view

#from django.contrib.auth.models import User     # Django Users library
#from django.contrib import auth # autorisation library

from django.core.context_processors import csrf # Form Komentari form security

from forum.paginator import Paginator # import paginator

from blog.models import SuperTema, Tema, Ieraksts

from blog.forms import IerakstsForm

import math

#from slugify import slugify

# !!!!!!! IP GRABBER
def get_client_ip(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip

# !!!!!!! MAIN ARGUMENT DEFINITION
def main_header(request):
    args = {}
    args['super'] = SuperTema.objects.all().order_by('order')
    args['title'] = u'Forums | kuvalda.lv'
    args['ip'] = get_client_ip(request)	# gets IP, and adds it to statistics models
    return args


# ================================================================================
# MAIN SKATS --> Visas Temas
def main(request, pageid=1):
    args = main_header(request)
    args['heading'] = u'Forums | Visas tēmas'
    args['active_tab'] = "visas"

    results_per_page = 20

    rez_obj = Tema.objects.filter(comment=True).order_by('-last_entry')

    if int(pageid) < 1: # negative page number --> 404
        return redirect ('/')

    pagecount = int(math.ceil( int(rez_obj.count()) / float( results_per_page ))) # integer identical to range by count

    if int(pageid) > pagecount and int(pageid) > 1: # pageid exceeds pagecount --> 404
        return redirect ('/')

    start_obj = int(pageid) * results_per_page - results_per_page # start from image NR
    end_obj = int(pageid) * results_per_page # end with image NR
    if end_obj > rez_obj.count(): # if end NR exceeds limit set it to end NR
        end_obj = rez_obj.count()

    args['paginator'] = Paginator( pagecount, pageid )
    args['temas'] = rez_obj[start_obj:end_obj]
    response = render_to_response('temas.html', args)
    return response


# ================================================================================
# SUPER TEMAS (Izvele pa kategorijam)
def super(request, s_id):
    args = main_header(request)

    try:
        s = SuperTema.objects.get(slug=str(s_id))
    except:
        redirect('/')

    args['heading'] = u'Forums | ' + s.title
    args['active_tab'] = s.slug

    temas = Tema.objects.filter(relate_to_super = s)

    args['temas'] = temas
# CHANGE TEMPLATE (MAYBIE)
    response = render_to_response('temas.html', args)
    return response


# ================================================================================
# TEMA
def temas(request, t_id, pageid=1):
    try:
        t = Tema.objects.get(slug=str(t_id))
    except:
        return redirect ('/')

    args = main_header(request)
    args.update(csrf(request)) # ADD CSRF TOKEN

    try:
        args['user'] = str(request.COOKIES.get(str('forum_user')))
    except:
        pass

    args['heading'] = u'Forums | ' + t.relate_to_super.title

    args['tema_nr'] = t.id
    args['tema_title'] = t.title

    results_per_page = 50

    rez_obj = Ieraksts.objects.filter(relate_to = t).order_by('date')

    if int(pageid) < 1: # negative page number --> 404
        return redirect ('/')

    pagecount = int(math.ceil( int(rez_obj.count()) / float( results_per_page ))) # integer identical to range by count

    if int(pageid) > pagecount and int(pageid) > 1: # pageid exceeds pagecount --> 404
        return redirect ('/')

    start_obj = int(pageid) * results_per_page - results_per_page # start from image NR
    end_obj = int(pageid) * results_per_page # end with image NR
    if end_obj > rez_obj.count(): # if end NR exceeds limit set it to end NR
        end_obj = rez_obj.count()

    args['paginator'] = Paginator( pagecount, pageid )
    args['diskusija'] = rez_obj[start_obj:end_obj]
    args['form'] = IerakstsForm

    if request.POST:
        form = IerakstsForm( request.POST, request.FILES )

        if form.is_valid():
            user = unicode( request.POST.get('user', '') )
            new_coment = form.save()
            new_coment.relate_to = t
            new_coment.save()

            t.last_entry = new_coment.date
            t.entry_count += 1
            t.save()

            response = redirect('/tema/' + str(t_id) + '/#id_user')
            response.set_cookie( key='forum_user', value=user )
            return response
    else:
        args['form'] = IerakstsForm

    response = render_to_response('diskusijas.html', args)
    return response

