FROM python:3.8

# Set working directory
WORKDIR /app

# Copy necessary files
COPY train.py test.py requirements.txt ./
COPY data /app/data

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Train the model
RUN python train.py

# Define entry point
CMD ["python", "test.py"]
