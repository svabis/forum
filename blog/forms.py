# -*- coding: utf-8 -*-
from django.forms import ModelForm
from blog.models import Ieraksts
from django import forms


class IerakstsForm(ModelForm):
    class Meta:
        model = Ieraksts
        fields = ('text', 'image')

        widgets = {
            'text': forms.Textarea(attrs={'class': 'form-control', 'rows' : '5', 'style':'resize:none;'}),
            'image': forms.FileInput(),
        }

