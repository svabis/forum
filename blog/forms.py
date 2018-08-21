# -*- coding: utf-8 -*-
from django.forms import ModelForm
from blog.models import Ieraksts, Tema
from django import forms

# Ieraksts
class IerakstsForm(ModelForm):
    class Meta:
        model = Ieraksts
        fields = ('text', 'image')

        widgets = {
            'text': forms.Textarea(attrs={'class': 'form-control', 'rows' : '5', 'style':'resize:none;'}),
            'image': forms.FileInput(),
        }

# Tema/Diskusija
class TemaForm(ModelForm):
    title = forms.CharField( max_length=100, required=True, label='Tēmas/Diskusijas nosaukums', help_text='Obligāti jāaizpilda',
        widget = forms.TextInput(attrs={'class': 'form-control'}) )

    class Meta:
        model = Tema
        fields = ('title', 'comment')
