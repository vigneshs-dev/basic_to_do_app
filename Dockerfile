FROM python:3.9-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . /app/

# Expose application port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
