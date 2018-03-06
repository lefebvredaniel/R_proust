from django.contrib import admin


from .models import Extraits, Etiquettes, R_Extraits_Etiquettes, Commentaires,Livre


##class Etiquettes(admin.TabularInline):
##       fields=['etiquettes_nom']

class ChoixEtiquettes(admin.TabularInline):
    model = R_Extraits_Etiquettes




class LivreAdmin(admin.ModelAdmin):
    model = Livre
 
    
class ExtraitsAdmin(admin.ModelAdmin):
  

    fields=['extraits_content','extraits_titre','pub_date', 'extraits_livre']
 

    inlines = [ChoixEtiquettes]
    InlineModelAdmin=[LivreAdmin]

class CommentairesAdmin(admin.ModelAdmin):
    model= Commentaires
 
  


admin.site.register(Extraits, ExtraitsAdmin)
admin.site.register(Etiquettes)
admin.site.register(Commentaires)
admin.site.register(Livre)


# Register your models here.
