from django.contrib import admin

from core.models import Counter

# class CounterAdmin(admin.ModelAdmin):
#     model = Counter

# Register your models here.
admin.site.register(Counter)
