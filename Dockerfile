# Använd en officiell Python-runtime som en föräldrabild
FROM python:3.10-slim

# Ange arbetsmappen i behållaren till /app
WORKDIR /app

# Lägg till innehållet i den aktuella katalogen till behållaren vid /app
COPY . .

# Installera Python-paket från requirements.txt
RUN pip install -r requirements.txt

# Kör app.py när behållaren startar
CMD ["python", "blog_project/manage.py", "runserver", "0.0.0.0:8000"]


#test
#test
