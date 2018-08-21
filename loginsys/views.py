# -*- coding: utf-8 -*-
from django.shortcuts import render_to_response, render, redirect
from django.core.context_processors import csrf

from django.contrib.auth.models import User # Django User models
from django.contrib import auth # autorisation library

from loginsys.forms import SignUpForm # SIGNUPFORM


# !!!!!!! IP GRABBER
def get_client_ip(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip

# !!!!! LOG IN
def login(request):
    args = {}       # create new argument list
    args.update(csrf(request))      # encript data
    args['ip'] = get_client_ip(request)
    args['user'] = auth.get_user(request)
    args['heading'] = u'Autorizācija sistēmā'
    args['title'] = u'Forums | Autorizācija'

    if request.POST: # actions if login Form is submitted
        username = request.POST.get('username', '') # usermname <= get variable from Form (name="username"), if not leave blank
        password = request.POST.get('password', '') # password <= get variable from Form (name="password"), if not leave blank
        user = auth.authenticate( username = username, password = password ) # new variable --> user from auth system

        if user is not None: # auth return None if this user does not exit, if not then:
            if user.is_active == False: # User is disabled in Django Admin -->
                args['login_error'] = "Lietotājs uz doto momentu ir bloķēts"
                return render_to_response ( 'login.html', args )
            auth.login( request, user ) # authorizate user from Form

           # REDIRECT TO PAGE OF ORIGIN
            if str('page_location') in request.COOKIES:
                response = redirect( str(request.COOKIES.get('page_location')) )
            else:
                response = redirect( '/' )
            return response

        else: # if user does not exist:
            args['login_error']	= "Ievadīts lietotāja vārds vai parole nepareizi"
            return render_to_response ( 'login.html', args )

    else: # actions if not request.POST (link clicked)
        return render_to_response ( 'login.html', args )

# !!!!! LOG OUT !!!!!
def logout(request):
    auth.logout(request)
    user = None

    response = redirect('/')
    return response


# !!!!! SIGNUP !!!!!
def signup(request):
    args = {}       # create new argument list
    args.update(csrf(request))      # encript data
    args['ip'] = get_client_ip(request)
    args['user'] = auth.get_user(request)
    args['heading'] = u'Reģistrācija sistēmā'
    args['title'] = u'Forums | Reģistrācija'

    if request.method == 'POST':
        form = SignUpForm(request.POST)

        if form.is_valid():
            form.save()

           # SIGUP USER
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user = auth.authenticate(username=username, password=raw_password)

           # LOGIN USER
            auth.login(request, user)

           # REDIRECT TO PAGE OF ORIGIN
            if str('page_location') in request.COOKIES:
                response = redirect( str(request.COOKIES.get('page_location')) )
            else:
                response = redirect( '/' )
            return response

        args['form'] = form
    else:
        args['form'] = SignUpForm()

    return render( request, 'signup.html', args )
