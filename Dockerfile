# Use a lightweight base image
FROM alpine:latest

# Set metadata for an image
LABEL maintainer="Het Joshi hetmatrix@gmail.com"

# Install necessary packages
RUN apk --no-cache add \
    bash \
    curl \
    jq

# Copy application files into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Define command to run the application
CMD ["bash"]

