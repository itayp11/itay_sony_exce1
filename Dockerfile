# Use an official Python runtime as the base image
FROM python:3.9 

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container 
COPY app.py .

# Set the entry point command for the container
CMD ["python", "app.py"]
