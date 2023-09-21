from .base import *
from .base import env


DEBUG = True
# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = env(
    "DJANGO_SECRET_KEY",
    default="django-insecure-zt-r*+e$1p^r$fm4@yavj)pn5$mm-^_gcno^umv*!=1_e*76=*",
)

ALLOWED_HOSTS = ["localhost", "0.0.0.0", "127.0.0.1"]
