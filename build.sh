#!/usr/bin/env bash
set -o errexit


# instalar deps (por si Render no lo hace)
pip install -r requirements.txt

# recopila archivos estáticos (necesario si usas WhiteNoise)
python manage.py collectstatic --no-input

# aplica migraciones
python manage.py migrate

