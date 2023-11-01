# syntax=docker/dockerfile:1

# Build image python
FROM python:3.10-slim-buster

# Create app directory
WORKDIR /app
# Copy requirements for container
COPY requirements.txt requirements.txt
# Install dependencies
RUN pip install -r requirements.txt
# Copy source code
COPY . .
# Run app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3030"]
