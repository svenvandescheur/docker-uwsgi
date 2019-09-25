FROM svenv/base
MAINTAINER Sven van de Scheur <svenvandescheur@gmail.com>

# Add file tree
ADD files /

# Install required packages
RUN apt-get update && apt-get install -y \
    libpq-dev \
    python3 \
    python3-pip && \

    pip3 install uwsgi

# Expose
EXPOSE 8000
