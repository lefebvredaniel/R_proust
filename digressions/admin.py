from django.contrib import admin


from .models import Extraits, Etiquettes, R_Extraits_Etiquettes, Commentaires


##class Etiquettes(admin.TabularInline):
##       fields=['etiquettes_nom']

class ChoixEtiquettes(admin.TabularInline):
    model = R_Extraits_Etiquettes




 
    
class ExtraitsAdmin(admin.ModelAdmin):
  

    fields=['extraits_content','extraits_titre','pub_date','extraits_livre']
 

    inlines = [ChoixEtiquettes]

class CommentairesAdmin(admin.ModelAdmin):
    model= Commentaires
 
  


admin.site.register(Extraits, ExtraitsAdmin)
admin.site.register(Etiquettes)
admin.site.register(Commentaires)


# Register your models here.
