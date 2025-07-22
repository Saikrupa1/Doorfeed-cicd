# Start from official Python image
FROM python:3.9-slim

# Set folder inside container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the Flask app code
COPY . .

# App listens on port 5000
EXPOSE 5000

# Start the app when container runs
CMD ["python", "app.py"]