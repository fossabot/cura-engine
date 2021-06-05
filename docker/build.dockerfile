# Cura Engine build environment

# Use Wasienv as base
FROM wasienv/wasienv

# Copy source code
COPY . .

# Disable promps while installing
ENV DEBIAN_FRONTEND=noninteractive

#Install packages
RUN apt install git -y