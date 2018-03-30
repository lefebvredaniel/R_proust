from django.shortcuts import render

from django.shortcuts import get_object_or_404

from django.http import HttpResponseRedirect, HttpResponse
from django.db import models
from django.db.models import Count
from digressions.models import Extraits, Etiquettes,R_Extraits_Etiquettes, Commentaires

from django.urls import reverse
from django.contrib.auth.models import User
from django.db import connection

from digressions.forms import RechercheForm, CommentForm, ContactForm
from django.utils import timezone
from django.core.mail import send_mail
from django.views.generic import ListView


"""
View which can render and send email from a contact form.
"""



try:
    from django.urls import reverse
except ImportError:  # pragma: no cover
    from django.core.urlresolvers import reverse  # pragma: no cover




#PAGE ACCUEIL

def index(request):


#On affiche toutes les étiquettes en les classant par fréquence (le comptage se fait avec la table relation R_Extraits_Etiquettes) puis par ordre alphabétique

    etiquettes_list=Etiquettes.objects.annotate(nb=Count('r_extraits_etiquettes')).order_by('-nb','etiquettes_nom')


    dico={}
##   uneEtiquette va représenter une étiquette tirée de etiquettes_list ex. [<Etiquettes: songe>]
    for uneEtiquette in etiquettes_list:

##on ajoute au dictionnaire "dico" le nombre d'occurrences de l'étiquette uneEtiquette {<Etiquettes: songe>: 1, <Etiquettes: jalousie>: 1,
##      <Etiquettes: amour>: 2 etc.}
<<<<<<< HEAD
        
        dico[uneEtiquette]=uneEtiquette.nb
=======
>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213

        dico[uneEtiquette]=uneEtiquette.nb


    context = {'dico':dico}


    return render(request, 'digressions/index.html', context)
##                              PAGE CONTENU (extrait)

def apropos(request):
    return render(request, 'digressions/apropos.html',{})

def poursyretrouver(request):
<<<<<<< HEAD
    
    etiquettes_list=Etiquettes.objects.annotate(nb=Count('r_extraits_etiquettes')).order_by('etiquettes_nom')
    
    PL=''
    dico={}
    ##   uneEtiquette va représenter une étiquette tirée de etiquettes_list ex. [<Etiquettes: songe>]
    for uneEtiquette in etiquettes_list:

        nomEtiquette=Etiquettes.objects.get(id=uneEtiquette.id).etiquettes_nom
        

=======

    etiquettes_list=Etiquettes.objects.annotate(nb=Count('r_extraits_etiquettes')).order_by('etiquettes_nom')

    PL=''
    dico={}
    ##   uneEtiquette va représenter une étiquette tirée de etiquettes_list ex. [<Etiquettes: songe>]
    for uneEtiquette in etiquettes_list:

        nomEtiquette=Etiquettes.objects.get(id=uneEtiquette.id).etiquettes_nom


>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
        if (PL!=nomEtiquette[0]):

            A=str(nomEtiquette[0])

            dico[A.upper]=''




    ##on ajoute au dictionnaire "dico" le nombre d'occurrences de l'étiquette uneEtiquette {<Etiquettes: songe>: 1, <Etiquettes: jalousie>: 1,
    ##      <Etiquettes: amour>: 2 etc.}
        nbOccurs=str(uneEtiquette.nb)
        dico[uneEtiquette]='('+nbOccurs+')'
<<<<<<< HEAD
        
    
=======


>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
    context = {'dico':dico}
    return render(request, 'digressions/poursyretrouver.html', context)


##################                                                      RECHERCHER                           ###########

def recherche(request):
    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = RechercheForm(request.POST)  # Nous reprenons les données
<<<<<<< HEAD
 

        if form.is_valid(): # vérifications que les données sont valides
            

            # récupération des données 
            mot = form.cleaned_data['mot']
 
            

       
            
    else:
        # Si ce n'est pas du POST
        form = RechercheForm()  # création d'un formulaire vide
 
       
    etiquettes_list=Etiquettes.objects.filter(etiquettes_nom__startswith=mot.lower()).annotate(nb=Count('r_extraits_etiquettes')).order_by('etiquettes_nom')
 

    dico={}
    ##   uneEtiquette va représenter une étiquette tirée de etiquettes_list ex. [<Etiquettes: songe>]
    for uneEtiquette in etiquettes_list:
    ##on ajoute au dictionnaire "dico" le nombre d'occurrences de l'étiquette uneEtiquette {<Etiquettes: songe>: 1, <Etiquettes: jalousie>: 1,
    ##      <Etiquettes: amour>: 2 etc.}
        B=str(uneEtiquette.nb)
        dico[uneEtiquette]='('+B+')'
    
    context = {'dico':dico} 
    return render(request, 'digressions/recherche.html', context)

#######################                                 LIENS INTERESSANTS                   ####################

def liensinteressants(request):
    context={}
    
=======


        if form.is_valid(): # vérifications que les données sont valides


            # récupération des données
            mot = form.cleaned_data['mot']





    else:
        # Si ce n'est pas du POST
        form = RechercheForm()  # création d'un formulaire vide


    etiquettes_list=Etiquettes.objects.filter(etiquettes_nom__startswith=mot.lower()).annotate(nb=Count('r_extraits_etiquettes')).order_by('etiquettes_nom')


    dico={}
    ##   uneEtiquette va représenter une étiquette tirée de etiquettes_list ex. [<Etiquettes: songe>]
    for uneEtiquette in etiquettes_list:
    ##on ajoute au dictionnaire "dico" le nombre d'occurrences de l'étiquette uneEtiquette {<Etiquettes: songe>: 1, <Etiquettes: jalousie>: 1,
    ##      <Etiquettes: amour>: 2 etc.}
        B=str(uneEtiquette.nb)
        dico[uneEtiquette]='('+B+')'

    context = {'dico':dico}
    return render(request, 'digressions/recherche.html', context)

#######################                                 LIENS INTERESSANTS                   ####################

def liensinteressants(request):
    context={}

>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213

    return render(request, 'digressions/liensinteressants.html', context)


#####################                                  AFFICHAGE DE TOUTES LES EXTRAITS  POSSEDANT LA MEME ETIQUETTE (etiq_id)    ##############

def detail(request, etiq_id):

##extraction de toutes les lignes qui ont l'étiquette sélectionnée dans l'écran précédent (etiq_id)
## à partir de la table relation R_Extraits_...
    selection_list= R_Extraits_Etiquettes.objects.filter(etiquettes_id_id=etiq_id)

## selection du nom de l'étiquette sélectionnée (transmise par son id)
    nom_etiquette = Etiquettes.objects.filter(id=etiq_id)
<<<<<<< HEAD
    
=======

>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
##    dico_tit={}
##    for t in selection_list:
##        titre=t.extraits_id
##        y=t.extraits_id_id
##        z=R_Extraits_Etiquettes.objects.filter(extraits_id_id=y).values()
<<<<<<< HEAD
##        
##        
=======
##
##
>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
    context={'etiquettes_list':selection_list,'nom_etiquette':nom_etiquette}
    return render(request, 'digressions/detail.html',context)

####################################################AFFICHAGE DE L'EXTRAIT D'UN TITRE ET DES COOMENTAIRES QUI LUI SONT RATTACHES   ###########

def contenu(request, titre_id):
<<<<<<< HEAD
    
    titreEnClair = get_object_or_404(Extraits, pk=titre_id) #titre_id = id de l'extrait
    # titre est le titre de l'extrait en alpha qui va servi à faire l'affichage html
    #titre_id est l'id de l'extrait
 
    username=request.user.id
    
    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = CommentForm(request.POST)  # récupération des données du commentaire
 

        if form.is_valid(): #  les données envoyées  valides ?
            
            #le premier titre_id est celui de la table commentaires et le deuxieme est celui qui correspondant à l'extrait (foreign key)
                
                p=Commentaires(author_id=username,body =form.cleaned_data['commentaires'],date=timezone.now(),titre_id=titre_id)
 

                p.save()
 
    liste_comment=Commentaires.objects.filter(titre_id=titre_id).order_by('author_id','-date')
    
    
    return render(request, 'digressions/contenu.html', {'titre': titreEnClair,'liste_comment':liste_comment})

###########################################   SUPPRIMER DES COMMENTAIRES D'UN EXTRAIT  #########################

def supprimer1(request,id,titre_id):
    username=request.user.id
 
################                  on offre la possiblité d'ajouter un commentaire dans le paragraphe supprimer1   ######### 
    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = CommentForm(request.POST)  # Nous reprenons les données
 

        if form.is_valid(): #  données envoyées  valides ?
            
            titr=Extraits.objects.filter(pk=titre_id)
            for t in titr:
                
            
=======

    titreEnClair = get_object_or_404(Extraits, pk=titre_id) #titre_id = id de l'extrait
    # titre est le titre de l'extrait en alpha qui va servi à faire l'affichage html
    #titre_id est l'id de l'extrait

    username=request.user.id

    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = CommentForm(request.POST)  # récupération des données du commentaire


        if form.is_valid(): #  les données envoyées  valides ?

            #le premier titre_id est celui de la table commentaires et le deuxieme est celui qui correspondant à l'extrait (foreign key)

                p=Commentaires(author_id=username,body =form.cleaned_data['commentaires'],date=timezone.now(),titre_id=titre_id)
>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213

                p=Commentaires(author_id=username,body =form.cleaned_data['commentaires'],date=timezone.now(),titre_id=titre_id)
 

<<<<<<< HEAD
            p.save()
                                        
    
    Commentaires.objects.filter(pk=id).delete()
 
    liste_comment=Commentaires.objects.filter(titre_id=titre_id).order_by('author_id','-date')
    titre = get_object_or_404(Extraits, pk=titre_id)
    context={'titre': titre,'liste_comment':liste_comment}
    print(context)
    
    return render(request, 'digressions/contenu.html',context)

 ################################################## MODIFIER  DES COMMENTAIRES D'UN EXTRAIT ATTACHE A L'UTILISATEUR NOMME DU SITE

def modifier1(request,id):
  
    
    #id = l'id du commentaire à modifier
    
    username=request.user.id
    comment = Commentaires.objects.filter(pk=id)
    
    for x in comment:

        titreEnClair = get_object_or_404(Extraits, pk=x.titre_id) #x.titre_id represente le lien(FK) avec le titre de l'extrait present dans Extraits ('extraits_titre')
        
    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = CommentForm(request.POST)  # Nous reprenons les données
 

=======
                p.save()

    liste_comment=Commentaires.objects.filter(titre_id=titre_id).order_by('author_id','-date')


    return render(request, 'digressions/contenu.html', {'titre': titreEnClair,'liste_comment':liste_comment})

###########################################   SUPPRIMER DES COMMENTAIRES D'UN EXTRAIT  #########################

def supprimer1(request,id,titre_id):
    username=request.user.id

################                  on offre la possiblité d'ajouter un commentaire dans le paragraphe supprimer1   #########
    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = CommentForm(request.POST)  # Nous reprenons les données


        if form.is_valid(): #  données envoyées  valides ?

            titr=Extraits.objects.filter(pk=titre_id)
            for t in titr:



                p=Commentaires(author_id=username,body =form.cleaned_data['commentaires'],date=timezone.now(),titre_id=titre_id)


            p.save()


    Commentaires.objects.filter(pk=id).delete()

    liste_comment=Commentaires.objects.filter(titre_id=titre_id).order_by('author_id','-date')
    titre = get_object_or_404(Extraits, pk=titre_id)
    context={'titre': titre,'liste_comment':liste_comment}
    print(context)

    return render(request, 'digressions/contenu.html',context)

 ################################################## MODIFIER  DES COMMENTAIRES D'UN EXTRAIT ATTACHE A L'UTILISATEUR NOMME DU SITE

def modifier1(request,id):


    #id = l'id du commentaire à modifier

    username=request.user.id
    comment = Commentaires.objects.filter(pk=id)

    for x in comment:

        titreEnClair = get_object_or_404(Extraits, pk=x.titre_id) #x.titre_id represente le lien(FK) avec le titre de l'extrait present dans Extraits ('extraits_titre')

    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = CommentForm(request.POST)  # Nous reprenons les données


>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
        if form.is_valid(): #  données envoyées  valides ?
##           titr=Extraits.objects.filter(pk=x.titre_id)
##           for t in titr:
##            print(t.id)
 ##           Commentaires.objects.filter(id=id).delete()
<<<<<<< HEAD

            p=Commentaires(id=id, author_id=username,body =form.cleaned_data['commentaires'],date=timezone.now(),titre_id=x.titre_id)
           

            p.save()
            
            
    else:
        "Si ce n'est pas du POST, c'est probablement une requête GET"

    comment = Commentaires.objects.filter(pk=id) # necessaire pour actualiser le commentaire à l'affichage
    liste_comment = Commentaires.objects.filter(titre_id=x.titre_id).order_by('author_id','-date')
     
    context={'titre': titreEnClair, 'commentaires':comment,'liste_comment': liste_comment}
 
    return render(request, 'digressions/contenu.html', context)

#############################################SUPPRIMER UN COMMENTAIRE ATTACHE A L'UTILISATEUR NOMME (tous les commentaires de l'utilisateur sont affichés)

def supprimer(request,id):
    
=======

            p=Commentaires(id=id, author_id=username,body =form.cleaned_data['commentaires'],date=timezone.now(),titre_id=x.titre_id)


            p.save()


    else:
        "Si ce n'est pas du POST, c'est probablement une requête GET"

    comment = Commentaires.objects.filter(pk=id) # necessaire pour actualiser le commentaire à l'affichage
    liste_comment = Commentaires.objects.filter(titre_id=x.titre_id).order_by('author_id','-date')

    context={'titre': titreEnClair, 'commentaires':comment,'liste_comment': liste_comment}

    return render(request, 'digressions/contenu.html', context)

#############################################SUPPRIMER UN COMMENTAIRE ATTACHE A L'UTILISATEUR NOMME (tous les commentaires de l'utilisateur sont affichés)

def supprimer(request,id):

>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
    Commentaires.objects.filter(pk=id).delete()
    comment=Commentaires.objects.filter(author_id=request.user.id).order_by ('-date')
    context={'commentaires':comment}
    return render(request, 'digressions/mescommentaires.html',context)
#############################################MODIFIER  UN COMMENTAIRE ATTACHE A L'UTILISATEUR NOMME (tous les commentaires de l'utilisateur sont affichés)

def modifier(request,id):

    comment = Commentaires.objects.filter(pk=id)
<<<<<<< HEAD
 
    username=request.user.id
   
    for t in comment:
        print(t.id)
  
=======

    username=request.user.id

    for t in comment:
        print(t.id)

>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
    context={'commentaires':comment}

    titre = get_object_or_404(Extraits, pk=t.titre_id)
    if request.method == 'POST':  # S'il s'agit d'une requête POST
        form = CommentForm(request.POST)  # Nous reprenons les données


        if form.is_valid(): # Nous vérifions que les données envoyées sont valides
            print("pas pb")

            # Ici nous pouvons traiter les données du formulaire
<<<<<<< HEAD
 
 
 
=======



>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
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
 #   liste_comment=Commentaires.objects.filter(author_id=username).order_by('-date')
 #   comment=Commentaires.objects.filter(author_id=request.user.id).order_by ('-date')
    context={'titre': titre, 'commentaires': comment}
    print(context)
<<<<<<< HEAD
   
    
    return render(request, 'digressions/contenu.html', context)


################################@    AFFICHAGE DE TOUS LES COMMENTAIRES DE L'UTILISATEUR NOMME  ############################

def mescommentaires(request):
   
    comment=Commentaires.objects.filter(author_id=request.user.id).order_by ('-date')
    extraits=Extraits.objects.all()
    context={'commentaires':comment,'extraits':extraits}
    
  
    return render(request, 'digressions/mescommentaires.html',context)



   
=======


    return render(request, 'digressions/contenu.html', context)


################################@    AFFICHAGE DE TOUS LES COMMENTAIRES DE L'UTILISATEUR NOMME  ############################

def mescommentaires(request):

    comment=Commentaires.objects.filter(author_id=request.user.id).order_by ('-date')
    extraits=Extraits.objects.all()
    context={'commentaires':comment,'extraits':extraits}


    return render(request, 'digressions/mescommentaires.html',context)




>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
def contact(request):
    # Construire le formulaire, soit avec les données postées,
    # soit vide si l'utilisateur accède pour la première fois
    # à la page.
    form = ContactForm(request.POST or None)
    # Nous vérifions que les données envoyées sont valides
<<<<<<< HEAD
    # Cette méthode renvoie False s'il n'y a pas de données 
    # dans le formulaire ou qu'il contient des erreurs.
 
    if form.is_valid(): 
=======
    # Cette méthode renvoie False s'il n'y a pas de données
    # dans le formulaire ou qu'il contient des erreurs.

    if form.is_valid():
>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
        # Ici nous pouvons traiter les données du formulaire
        sujet = form.cleaned_data['sujet']
        message = form.cleaned_data['message']
        envoyeur = form.cleaned_data['envoyeur']
<<<<<<< HEAD
       
        renvoi = form.cleaned_data['renvoi']
        send_mail(sujet,message+"    "+envoyeur, envoyeur,['dlemproust@gmail.com'],fail_silently=False)
 
 
        # Nous pourrions ici envoyer l'e-mail grâce aux données 
        # que nous venons de récupérer
        if renvoi:
            send_mail("copie de votre message"+"   " +sujet,message,'dlemproust@gmail.com',[envoyeur],fail_silently=False)
        envoi = True
    form=ContactForm()
 
=======

        renvoi = form.cleaned_data['renvoi']
        send_mail(sujet,message+"    "+envoyeur, envoyeur,['dlemproust@gmail.com'],fail_silently=False)


        # Nous pourrions ici envoyer l'e-mail grâce aux données
        # que nous venons de récupérer
        if renvoi:
            send_mail("copie message"+"   " +sujet,message,'dlemproust@gmail.com',[envoyeur],fail_silently=False)
        envoi = True
    form=ContactForm()

>>>>>>> ef9b3a8798725615dcfbf7f4e5a0bcce7d0e3213
    # Quoiqu'il arrive, on affiche la page du formulaire.
    return render(request, 'digressions/contact.html', locals())

class CommentairesListView(ListView):
        queryset=Commentaires.objects.all()
