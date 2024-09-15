# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY main.py .

# Expose the port that the app will run on
EXPOSE 5000

# Use gunicorn to serve the app
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "main:app"]