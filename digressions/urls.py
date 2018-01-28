from django.urls import path

from . import views
app_name = 'digressions'

urlpatterns = [
    path('', views.index, name='index'),
    
    path('<int:titre_id>/contenu', views.contenu, name='contenu'),
    path('apropos', views.apropos, name='apropos'),
    path('<int:etiq_id>/detail/',views.detail, name='detail'),
    path('poursyretrouver',views.poursyretrouver, name='poursyretrouver')
    
 

    
  
]
