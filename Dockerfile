# Use the official Python image
FROM python:3.12-slim

# Create a working directory inside the container
WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Install Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the remaining project files
COPY . .

# Expose Flask port
EXPOSE 5000

# Start the application
CMD ["python", "app.py"]
