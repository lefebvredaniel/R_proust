from django.contrib import admin


from .models import Extraits, Etiquettes, R_Extraits_Etiquettes


##class Etiquettes(admin.TabularInline):
##       fields=['etiquettes_nom']

class ChoixEtiquettes(admin.TabularInline):
    model = R_Extraits_Etiquettes




 
    
class ExtraitsAdmin(admin.ModelAdmin):
  

    fields=['extraits_content','extraits_titre','pub_date']
 

    inlines = [ChoixEtiquettes]



admin.site.register(Extraits, ExtraitsAdmin)
admin.site.register(Etiquettes)


# Register your models here.
