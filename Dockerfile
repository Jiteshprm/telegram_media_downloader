# Use the latest Ubuntu base image
FROM ubuntu:latest

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    && rm -rf /var/lib/apt/lists/*

# Set Python 3 as the default Python version
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1

# Copy the script run.sh to the container's working directory
COPY run.sh /usr/src/app/

# Set the working directory inside the container
WORKDIR /usr/src/app/

# Give execution permission to run.sh
RUN chmod +x run.sh

# Run the script
CMD ["./run.sh"]
