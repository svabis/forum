# -*- coding: utf-8 -*-
from django.forms import ModelForm
from blog.models import Tema, Ieraksts
from django import forms


class IerakstsForm(ModelForm):
    class Meta:
        model = Ieraksts
        fields = ('user', 'text', 'image')

        widgets = {
            'user': forms.TextInput(attrs={'class': 'form-control'}),
#            'user': forms.TextInput(attrs={'class': 'form-control', 'readonly':'readonly'}),
            'text': forms.Textarea(attrs={'class': 'form-control', 'rows' : '5', 'style':'resize:none;'}),
            'image': forms.FileInput(),
        }

