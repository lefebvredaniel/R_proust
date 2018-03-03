from django.shortcuts import render

from django.shortcuts import get_object_or_404

from django.http import HttpResponseRedirect, HttpResponse
from django.db import models
from django.db.models import Count
from digressions.models import Extraits, Etiquettes,R_Extraits_Etiquettes, Commentaires

from django.urls import reverse
from django.contrib.auth.models import User
from django.db import connection

from digressions.forms import RechercheForm, CommentForm
from django.utils import timezone  



#PAGE ACCUEIL

def index(request):

    
#On affiche toutes les étiquettes en les classant par fréquence (le comptage se fait avec la table relation R_Extraits_Etiquettes) puis par ordre alphabétique
  
    etiquettes_list=Etiquettes.objects.annotate(nb=Count('r_extraits_etiquettes')).order_by('-nb','etiquettes_nom')
 

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

   
    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = CommentForm(request.POST)  # Nous reprenons les données
 

        if form.is_valid(): # Nous vérifions que les données envoyées sont valides
            print("pas pb")
 
            # Ici nous pouvons traiter les données du formulaire
 
            username=request.user.id
 
##            user=User.objects.filter(username=username)
##            print(user)
##            for e in user:
##                print(e.id)
            titr=Extraits.objects.filter(pk=titre_id)
            for t in titr:
                
            

                p=Commentaires(author_id=username,body =form.cleaned_data['commentaires'],date=timezone.now(),titre_id=t.id)
 

            p.save()
 
            
    else:
        "Si ce n'est pas du POST, c'est probablement une requête GET"
        
##        form = CommentForm()
    

    return render(request, 'digressions/contenu.html', {'titre': titre})

def apropos(request):
    return render(request, 'digressions/apropos.html',{})

def detail(request, etiq_id):


    selection_list= R_Extraits_Etiquettes.objects.filter(etiquettes_id_id=etiq_id)
   
    
    nom_etiquette = Etiquettes.objects.filter(id=etiq_id)
    dico_tit={}
    for t in selection_list:
        titre=t.extraits_id
        y=t.extraits_id_id
        z=R_Extraits_Etiquettes.objects.filter(extraits_id_id=y).values()
        
        
        for liv in z:
            w=Etiquettes.objects.filter(id=liv['etiquettes_id_id']).values()
 

            for livre in w :
               
 
                if livre['etiquettes_nom'] =="du coté de chez Swann":
 
                    dico_tit['livre']=(titre,livre['etiquettes_nom'])
                else:
                    if livre['etiquettes_nom']=="à l'ombre des jeunnes filles en fleurs":
                        dico_tit['livre']=(titre,livre['etiquettes_nom'])
            
 
            
    
 
    context={'etiquettes_list':selection_list,'nom_etiquette':nom_etiquette}
  

    return render(request, 'digressions/detail.html',context)


def poursyretrouver(request):
    etiquettes_list=Etiquettes.objects.annotate(nb=Count('r_extraits_etiquettes')).order_by('etiquettes_nom')
 



    PL=''
    dico={}
    ##   EE va représenter une étiquette tirée de etiquettes_list ex. [<Etiquettes: songe>]
    for EE in etiquettes_list:

        premiereLettre=Etiquettes.objects.get(id=EE.id).etiquettes_nom
        

        if (PL!=premiereLettre[0]):

            A=str(premiereLettre[0])

            dico[A.upper]=''




    ##on ajoute au dictionnaire "dico" le nombre d'occurrences de l'étiquette EE {<Etiquettes: songe>: 1, <Etiquettes: jalousie>: 1,
    ##      <Etiquettes: amour>: 2 etc.}
        B=str(EE.nb)
        dico[EE]='('+B+')'
    
    context = {'dico':dico}
    return render(request, 'digressions/poursyretrouver.html', context)

def recherche(request):
    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = RechercheForm(request.POST)  # Nous reprenons les données
 

        if form.is_valid(): # Nous vérifions que les données envoyées sont valides
            

            # Ici nous pouvons traiter les données du formulaire
            mot = form.cleaned_data['mot']
 
            
 #           message = form.cleaned_data['message']
 #           envoyeur = form.cleaned_data['envoyeur']
 #           renvoi = form.cleaned_data['renvoi']

            # Nous pourrions ici envoyer l'e-mail grâce aux données que nous venons de récupérer

 #           envoi = True
       
            
    else:
        # Si ce n'est pas du POST, c'est probablement une requête GET
        form = RechercheForm()
 
        # Nous créons un formulaire vide
    etiquettes_list=Etiquettes.objects.filter(etiquettes_nom__startswith=mot.lower()).annotate(nb=Count('r_extraits_etiquettes')).order_by('etiquettes_nom')
 
    PL=''
    dico={}
    ##   EE va représenter une étiquette tirée de etiquettes_list ex. [<Etiquettes: songe>]
    for EE in etiquettes_list:
    ##on ajoute au dictionnaire "dico" le nombre d'occurrences de l'étiquette EE {<Etiquettes: songe>: 1, <Etiquettes: jalousie>: 1,
    ##      <Etiquettes: amour>: 2 etc.}
        B=str(EE.nb)
        dico[EE]='('+B+')'
    
    context = {'dico':dico} 
    return render(request, 'digressions/recherche.html', context)

def liensinteressants(request):
    context={}
    

    return render(request, 'digressions/liensinteressants.html', context)

def mescommentaires(request):
   
    comment=Commentaires.objects.filter(author_id=request.user.id).order_by ('-date')
    context={'commentaires':comment}
    
  
    return render(request, 'digressions/mescommentaires.html',context)

def supprimer(request,id):
    print(id)
    
    Commentaires.objects.filter(pk=id).delete()
 
    comment=Commentaires.objects.filter(author_id=request.user.id).order_by ('-date')
    context={'commentaires':comment}
   
    
 
    return render(request, 'digressions/mescommentaires.html',context)
def modifier(request,id):
                                                                             
    comment = Commentaires.objects.filter(pk=id)
 
   
   
    for t in comment:
        print(t.titre_id)
  
    context={'commentaires':comment}

    titre = get_object_or_404(Extraits, pk=t.titre_id)
    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = CommentForm(request.POST)  # Nous reprenons les données
 

        if form.is_valid(): # Nous vérifions que les données envoyées sont valides
            print("pas pb")
 
            # Ici nous pouvons traiter les données du formulaire
 
            username=request.user.id
 
##            user=User.objects.filter(username=username)
##            print(user)
##            for e in user:
##                print(e.id)
            titr=Extraits.objects.filter(pk=t.titre_id)
            for t in titr:
                print(t.id)
 ##           Commentaires.objects.filter(id=id).delete()

            p=Commentaires(id=id, author_id=username,body =form.cleaned_data['commentaires'],date=timezone.now(),titre_id=t.id)
           

            p.save()
            
            
    else:
        "Si ce n'est pas du POST, c'est probablement une requête GET"
        
##      form = CommentForm()
    comment = Commentaires.objects.filter(pk=id)
    context={'titre': titre, 'commentaires': comment}
   
    
    return render(request, 'digressions/contenu.html', context)
   


