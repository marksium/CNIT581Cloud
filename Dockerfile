# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Update the package repository and install necessary packages
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    python3 \
    net-tools

# Clean up the cache to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set up a working directory
WORKDIR /usr/src/app

# Copy files from your project’s directory to the container
# COPY . .

# Expose port 8000 for the web server
EXPOSE 8000

# Start a simple Python HTTP server
CMD ["python3", "-m", "http.server", "8000"]
