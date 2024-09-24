# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set environment variables to prevent .pyc files from being written and enable unbuffered output
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . /usr/src/app

# Install system dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc libpq-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install any needed packages specified in requirements.txt
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 for Google Cloud Run
EXPOSE 8080

# Run the FastAPI app using uvicorn for better performance
CMD ["uvicorn", "main:app", "--bind", "0.0.0.0:8080", "--workers", "4"]
