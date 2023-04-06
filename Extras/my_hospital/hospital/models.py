from django.db import models

class Doctor(models.Model):
  DName = models.CharField(max_length=255)

class Hospital(models.Model):
  HName = models.CharField(max_length=255)