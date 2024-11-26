# Use the official Python image from the DockerHub
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt to the container
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the bot script into the container
COPY . /app/

# Set the environment variable to disable buffering (optional, but useful for logs)
ENV PYTHONUNBUFFERED=1

# Run the bot script
CMD ["python", "bot.py"]
