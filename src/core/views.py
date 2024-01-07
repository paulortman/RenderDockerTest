from django.shortcuts import render

from django.views.generic import TemplateView

# Create your views here.

class CountView(TemplateView):
    template_name = 'index.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['names'] = ["Paul", ]
        return context
