# Use the official lightweight Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements if you have (better for caching)
# but since you have only Flask, we can install directly
RUN pip install --no-cache-dir flask

# Copy application code
COPY . /app

# Expose port 5000 (default Flask port)
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
