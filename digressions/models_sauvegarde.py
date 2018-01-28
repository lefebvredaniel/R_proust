from django.db import models
import datetime
from django.utils import timezone



class Extraits(models.Model):
 
 
    extraits_titre = models.CharField(max_length=50)
    def __str__(self):
         return self.extraits_titre
    
    extraits_content = models.CharField(max_length=2000)
    
    def __str__(self):
         return self.extraits_content
    


        
    pub_date = models.DateTimeField('date published')
    
    
    def was_published_recently(self):
        return self.pub_date >= timezone.now() - datetime.timedelta(days=1)


class Etiquettes(models.Model):
    etiquettes_digression = models.ForeignKey(Extraits, on_delete=models.CASCADE)
    etiquettes_nom = models.CharField(max_length=50)
 
    def __str__(self):
        return self.etiquettes_nom
# Create your models here.
