# Use Python312
FROM python:3.12-alpine

# Copy requirements.txt to the docker image and install packages
COPY requirements.txt /
RUN pip install -r requirements.txt

# Set the WORKDIR to be the folder
COPY . /app

# Expose port 5000
EXPOSE 5000
ENV PORT 5000
WORKDIR /app

CMD exec python main.py
