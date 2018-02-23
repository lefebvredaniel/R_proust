from django.db import models
import datetime
from django.utils import timezone
from django.conf import settings
from django.contrib.auth.models import User



class Extraits(models.Model):
 
    extraits_content = models.CharField(max_length=2000)
    extraits_titre = models.CharField(max_length=50)
    def __str__(self):
         return self.extraits_titre       
    pub_date = models.DateTimeField('date published')
    
    
    def was_published_recently(self):
        return self.pub_date >= timezone.now() - datetime.timedelta(days=1)


class Etiquettes(models.Model):
 
    etiquettes_nom = models.CharField(max_length=50)
    
    class meta:
        ordering = ['etiquettes_nom']
 
    def __str__(self):
        return self.etiquettes_nom
    
class Commentaires(models.Model):
 
    author = models.ForeignKey (User, 
        on_delete=models.CASCADE)
    body = models.TextField()
    date = models.DateTimeField(auto_now_add=True)
    titre = models.ForeignKey (Extraits, null=True,on_delete=models.CASCADE)

    def __str__(self):
        return self.body 
# Create your models here.
class R_Extraits_Etiquettes(models.Model):
   extraits_id = models.ForeignKey(Extraits, on_delete=models.CASCADE)
   etiquettes_id = models.ForeignKey(Etiquettes, on_delete=models.CASCADE)
       

    
