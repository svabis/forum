# -*- coding: utf-8 -*-
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

from django.utils.translation import ugettext_lazy


class SignUpForm(UserCreationForm):
    first_name = forms.CharField( max_length=30, required=False, label='Vārds',
        widget = forms.TextInput(attrs={'class': 'form-control'}) )

    last_name = forms.CharField( max_length=30, required=False, label='Uzvārds',
        widget = forms.TextInput(attrs={'class': 'form-control'}) )

    email = forms.EmailField( max_length=254, help_text='Objigāti aizpildāms', label='E-pasts',
#        error_message = (u'Šis lauks ir obligāts'),
        widget = forms.EmailInput( attrs={'class': 'form-control'}) )

    username = forms.CharField( max_length=30, required=True, help_text='Obligāts aizpildāms', label='Lietotājvārds',
#        error_message = (u'Šis lauks ir obligāts'),
        widget = forms.TextInput(attrs={'class': 'form-control'}) )


    password1 = forms.CharField( max_length=30, required=True, label='Parole',
#        error_message = (u'Šis lauks ir obligāts'),
        widget = forms.PasswordInput(attrs={'class': 'form-control'}) )

    password2 = forms.CharField( max_length=30, required=True, label='Paroles pārbaude', help_text='Ievadiet paroli atkārtoti pārbaudes nolūkos',
#        error_message = (u'Šis lauks ir obligāts'),
        widget = forms.PasswordInput(attrs={'class': 'form-control'}) )



    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'email', 'username', 'password1', 'password2')
