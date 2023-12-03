# Use Ubuntu as the base image
FROM ubuntu:20.04

# Update the package repository and install packages
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    python3 \
    net-tools

# Clean up the cache to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Optional: Any other configuration or setup steps
CMD echo "Hello, I'm a container running Ubuntu with basic packages installed!"