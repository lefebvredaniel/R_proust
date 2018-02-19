from django.shortcuts import render

from django.contrib.auth import authenticate, login, logout
from django.shortcuts import get_object_or_404

from django.http import HttpResponseRedirect, HttpResponse
from django.db import models
from django.db.models import Count
from digressions.models import Extraits, Etiquettes,R_Extraits_Etiquettes

from django.urls import reverse
 

##from django.db import connection
##connection.queries
##
from digressions.forms import RechercheForm, ConnexionForm
   



#PAGE ACCUEIL
def index(request):



  #  etiquettes_list = Etiquettes.objects.all().order_by ('etiquettes_nom')
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
 #   V=Etiquettes.objects.get(id=2).etiquettes_nom
 #   print(V[0])



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


 
    

def connexion(request):
    error = False

    if request.method == "POST":
        form = ConnexionForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data["username"]
            password = form.cleaned_data["password"]
            user = authenticate(username=username, password=password)  # Nous vérifions si les données sont correctes
            if user:  # Si l'objet renvoyé n'est pas None
                login(request, user)  # nous connectons l'utilisateur
            else: # sinon une erreur sera affichée
                error = True
    else:
        form = ConnexionForm()
   
    return render(request, 'digressions/connexion.html', locals())
def inscription(request):
    
    if request.method == "POST":
        form = ConnexionForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data["username"]
            password = form.cleaned_data["password"]
 
    else:
        form = ConnexionForm()

    return render(request, 'digressions/inscription.html', locals())

def deconnexion(request):
    logout(request)
    return HttpResponseRedirect(reverse(connexion))





