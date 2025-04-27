# Use a lightweight base image
FROM debian:bullseye-slim

# Install aria2 and Python
RUN apt-get update && apt-get install -y \
    aria2 \
    python3 \
    && apt-get clean

# Create a working directory
WORKDIR /app

# Expose the necessary ports
EXPOSE 6800 8080

# Start both aria2c and Python server
CMD aria2c --enable-rpc --rpc-listen-port=6800 --rpc-listen-all=true --rpc-allow-origin-all & \
    python3 -m http.server 8080
