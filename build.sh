#!/bin/bash

#Build the project
echo "Building the project....."
python3 pip install -r requirements.txt

echo "Make migrations...."
python manage.py makemigrations --noinput
python manage.py migrate --noinput

echo "Collect static files...."
python manage.py collectstatic --noinput --clear
