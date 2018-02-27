from django.urls import path
from django.contrib.auth import views as auth_views
from . import views
from django.conf.urls import url
app_name = 'digressions'

urlpatterns = [
    path('', views.index, name='index'),


    path('<int:titre_id>/contenu', views.contenu, name='contenu'),
    path('apropos', views.apropos, name='apropos'),
    path('<int:etiq_id>/detail/',views.detail, name='detail'),
    path('poursyretrouver',views.poursyretrouver, name='poursyretrouver'),
    path('liensinteressants',views.liensinteressants, name='liensinteressants'),
    path('mescommentaires',views.mescommentaires, name='mescommentaires'),
    path('<int:id>/mescommentaires/asupprimer',views.supprimer, name='supprimer'),
    path('<int:id>/mescommentaires/amodifier',views.modifier, name='modifier'),
    path('recherche', views.recherche, name='recherche'),
 





]
