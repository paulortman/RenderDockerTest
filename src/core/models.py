from django.db import models

# Create your models here.

class Counter(models.Model):
    cnt = models.IntegerField(default=0)

    def get_n_update(self):
        cnt = self.cnt
        self.cnt += 1
        self.save()
        return cnt