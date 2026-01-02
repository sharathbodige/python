# Use official lightweight Python image
#FROM python:3.11-slim

# Set working directory inside container
#WORKDIR /app

# Copy project files (app.py and requirements.txt)
#COPY . .

# Install Python dependencies
#RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask
#EXPOSE 5000

# Run Flask app
#CMD ["python", "app.py"]




FROM python:3.11-slim AS build
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 5000
CMD ["python3", "app.py"]


















