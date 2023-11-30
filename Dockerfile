# Base image
FROM python:3.11

# Create a working directory
WORKDIR /app

# Install pip
RUN apt-get update && apt-get install -y python3-pip

COPY requirements.txt .

# Install the project's dependencies
RUN pip install -r requirements.txt

# Start the Django development server
CMD python manage.py runserver 0.0.0.0:8000