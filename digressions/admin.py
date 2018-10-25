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
    
    search_fields =['extraits_content']
 

    inlines = [ChoixEtiquettes]
    InlineModelAdmin=[LivreAdmin]

# class SearchModel(admin.ModelAdmin):
	
	
#     search_fields=['extraits_content']

class CommentairesAdmin(admin.ModelAdmin):
    model= Commentaires
 
  


admin.site.register(Extraits, ExtraitsAdmin)
admin.site.register(Etiquettes)
admin.site.register(Commentaires)
admin.site.register(Livre) 
# admin.site.register(SearchModel)


# Register your models here.
