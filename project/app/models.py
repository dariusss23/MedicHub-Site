from django.db import models
from django.conf import settings

'''
USER
COURSES
EVENTS
MAGAZINE
TRANSACTIONS
CERTIFICATE
'''


from django.contrib.auth.models import AbstractUser
    
class CustomUser(AbstractUser):
    # ID-ul este generat automat de Django (AutoField)
    
    # Date Personale (nume, prenume, email sunt mostenite din AbstractUser)
    
    cnp = models.CharField(max_length=13, unique=True, verbose_name="CNP")
    phone = models.CharField(max_length=20, verbose_name="Telefon")
    correspondence_address = models.TextField(verbose_name="Adresa de Corespondenta")
    county = models.CharField(max_length=100, verbose_name="Judet")
    city = models.CharField(max_length=100, verbose_name="Localitate")
    
    user_type = models.CharField(max_length=50, verbose_name="Tip User")
    occupation = models.CharField(max_length=100, verbose_name="Ocupatie")
    specialization_1 = models.CharField(max_length=150, verbose_name="Specializare")
    specialization_2 = models.CharField(max_length=150, blank=True, null=True, verbose_name="Specializare 2")
    department = models.CharField(max_length=100, blank=True, null=True, verbose_name="Sectia")
    is_snmf_member = models.BooleanField(default=False, verbose_name="Membru SNMF")
    minors_count = models.PositiveIntegerField(default=0, verbose_name="Nr minori")
    cmv = models.CharField(max_length=100, blank=True, null=True, verbose_name="CMV")
    stamp_code = models.CharField(max_length=50, verbose_name="Cod parafa")
    cuim = models.CharField(max_length=50, verbose_name="CUIM")
    academic_title = models.CharField(max_length=100, blank=True, null=True, verbose_name="Titlu universitar")
    
    institution_name = models.CharField(max_length=200, verbose_name="Denumirea institutiei")
    institution_address = models.TextField(blank=True, null=True, verbose_name="Adresa institutiei")
    institution_county = models.CharField(max_length=100, blank=True, null=True, verbose_name="Judet institutie")
    institution_city = models.CharField(max_length=100, blank=True, null=True, verbose_name="Localitate institutie")
    
    consent_email = models.BooleanField(default=True, verbose_name="Acord email")
    consent_sms = models.BooleanField(default=False, verbose_name="Acord SMS")
    consent_postal = models.BooleanField(default=False, verbose_name="Acord posta")
    status = models.CharField(max_length=50, default="Activ", verbose_name="Status")

    def __str__(self):
        return f"{self.first_name} {self.last_name} ({self.username})"


class Course(models.Model):
    id_course = models.AutoField(primary_key=True, verbose_name="ID Curs")
    name = models.CharField(max_length=255, verbose_name="Nume Curs")
    date_start = models.DateField(verbose_name="Data Inceput")
    date_end = models.DateField(verbose_name="Data Final")
    rating = models.DecimalField(max_digits=3, decimal_places=1, default=0.0, verbose_name="Rating")
    number_credits = models.PositiveIntegerField(default=0, verbose_name="Nr. Credite")

    def __str__(self):
        return f"{self.id_course} - {self.name}"
    
class UserCourse(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    progress = models.IntegerField(default=0, verbose_name="Progres (%)")
    registration_date = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        unique_together = ('user', 'course')


class Event(models.Model):
    event_id = models.AutoField(primary_key=True, verbose_name="ID Eveniment")
    
    name = models.CharField(max_length=255, verbose_name="Nume Eveniment")
    event_date = models.DateTimeField(verbose_name="Data Evenimentului")
    location = models.CharField(max_length=255, verbose_name="Locație")
    emc_points = models.PositiveIntegerField(default=0, verbose_name="Puncte EMC")

    DELIVERY_MODE_CHOICES = [
        ('physical', 'Fizic'),
        ('online', 'Online'),
        ('hybrid', 'Hibrid'),
    ]
    delivery_mode = models.CharField(max_length=10, choices=DELIVERY_MODE_CHOICES, default='online', verbose_name="Cum se desfasoara evenimentul")

    def __str__(self):
        return self.name

class UserEvent(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    event = models.ForeignKey(Event, on_delete=models.CASCADE)
    enrollment_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        unique_together = ('user', 'event')

class Magazine(models.Model):
    magazine_id = models.AutoField(primary_key=True, verbose_name="ID Revistă")
    title = models.CharField(max_length=255, verbose_name="Titlu Revistă")
    category = models.CharField(max_length=100, verbose_name="Categorie")
    edition_number = models.PositiveIntegerField(verbose_name="Număr Ediție")
    edition_year = models.PositiveIntegerField(verbose_name="An Ediție")
    publication_date = models.DateField(verbose_name="Data Publicării")

    def __str__(self):
        return f"{self.title} - No. {self.edition_number}/{self.edition_year}"


class UserMagazine(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    magazine = models.ForeignKey(Magazine, on_delete=models.CASCADE)
    access_granted_date = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        unique_together = ('user', 'magazine')


class Transaction(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='transactions')
    
    # REVISTA / CURS / EVENIMENT
    category = models.CharField(max_length=50, verbose_name="Categorie")

    # Abonament Combo: Medic.ro + Ginecologia.ro
    product_name = models.CharField(max_length=255, verbose_name="Produs/Serviciu")
    
    # ID-ul vizual: #MH-2026-9981
    transaction_reference = models.CharField(max_length=100, unique=True, verbose_name="Cod Tranzactie")
    
    # Status: Finalizat, In asteptare, Anulat
    STATUS_CHOICES = [
        ('completed', 'Finalizat'),
        ('pending', 'In asteptare'),
        ('failed', 'Esuat'),
    ]
    
    status = models.CharField(max_length=20, choices=STATUS_CHOICES,  default='pending', verbose_name="Status")

    # 06 Martie 2026
    date = models.DateTimeField(verbose_name="Data Tranzactiei")

    # Card Bancar (**** 4421)
    payment_method = models.CharField(max_length=100, verbose_name="Metoda de plata")

    # Suma: 450.00 RON
    amount = models.DecimalField(max_digits=10, decimal_places=2, verbose_name="Sumă Platita")
    currency = models.CharField(max_length=10, default='RON')

    # Factură (Camp pentru fisierul PDF generat)

    def __str__(self):
        return f"{self.transaction_reference} - {self.user.last_name}"

from django.db import models
from django.conf import settings

class Certificate(models.Model):
    certificate_id = models.AutoField(primary_key=True, verbose_name="ID Certificat")
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='certificates')
    course = models.ForeignKey('Course', on_delete=models.SET_NULL, null=True, blank=True,verbose_name="Curs sursa")
    name = models.CharField(max_length=255, verbose_name="Nume Curs Certificat")
    issue_date = models.DateField(verbose_name="Data Eliberării")
    
    # pdf_file = models.FileField(upload_to='certificates/%Y/%m/', verbose_name="Fisier PDF")

    def __str__(self):
        return f"Certificat: {self.name} - {self.user.last_name}"

class ManualCredit(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    title = models.CharField(max_length=255, verbose_name="Titlu Activitate")
    score = models.PositiveIntegerField(verbose_name="Puncte EMC")
    year = models.PositiveIntegerField(verbose_name="An")
    # Tip: 'magazine', 'external', 'other'
    credit_type = models.CharField(max_length=50, default='external')
    is_verified = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.title} - {self.score} Puncte"