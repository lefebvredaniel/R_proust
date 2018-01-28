from django.shortcuts import render


from django.shortcuts import get_object_or_404, render

from django.http import HttpResponseRedirect, HttpResponse
from django.db import models
from django.db.models import Count
from digressions.models import Extraits, Etiquettes,R_Extraits_Etiquettes

from django.urls import reverse
##from django.db import connection
##connection.queries
##                              PAGE ACCUEIL
def index(request):

 

  #  etiquettes_list = Etiquettes.objects.all().order_by ('etiquettes_nom')
    etiquettes_list=Etiquettes.objects.annotate(nb=Count('r_extraits_etiquettes')).order_by('-nb')[:10]

    dico={}
    ##   EE va représenter une étiquette tirée de etiquettes_list ex. [<Etiquettes: songe>]
    for EE in etiquettes_list:
                      
    ##on ajoute au dictionnaire "dico" le nombre d'occurrences de l'étiquette EE {<Etiquettes: songe>: 1, <Etiquettes: jalousie>: 1,
    ##      <Etiquettes: amour>: 2 etc.}
        dico[EE]=EE.nb       
    context = {'dico':dico}

    return render(request, 'digressions/index.html', context)
##                              PAGE CONTENU (extrait)
def contenu(request, titre_id):
    
 
    
    titre = get_object_or_404(Extraits, pk=titre_id)
   
    
    return render(request, 'digressions/contenu.html', {'titre': titre})

def apropos(request):
    return render(request, 'digressions/apropos.html',{})

def detail(request, etiq_id):
   
   
    selection_list= R_Extraits_Etiquettes.objects.filter(etiquettes_id_id=etiq_id)
    etiquettes_list = Etiquettes.objects.filter(id=etiq_id)
    
 
    context={'etiquettes_list':selection_list,'nom_etiquette':etiquettes_list}

    return render(request, 'digressions/detail.html',context)


def poursyretrouver(request):
    etiquettes_list=Etiquettes.objects.annotate(nb=Count('r_extraits_etiquettes')).order_by('etiquettes_nom')
 #   V=Etiquettes.objects.get(id=2).etiquettes_nom
 #   print(V[0])
    
 
 
    PL=''
    dico={}
    ##   EE va représenter une étiquette tirée de etiquettes_list ex. [<Etiquettes: songe>]
    for EE in etiquettes_list:

        premiereLettre=Etiquettes.objects.get(id=EE.id).etiquettes_nom
        print(premiereLettre[0])
        
        if (PL!=premiereLettre[0]):
            
            A=str(premiereLettre[0])
                  
            dico[A.upper]=''
            
        
            
                      
    ##on ajoute au dictionnaire "dico" le nombre d'occurrences de l'étiquette EE {<Etiquettes: songe>: 1, <Etiquettes: jalousie>: 1,
    ##      <Etiquettes: amour>: 2 etc.}
        B=str(EE.nb)
        dico[EE]='('+B+')'
    print(dico)
    context = {'dico':dico}
    return render(request, 'digressions/poursyretrouver.html', context)
