FROM svenv/base
MAINTAINER Sven van de Scheur <svenvandescheur@gmail.com>

# Add file tree
ADD files /

# Install required packages
RUN apt-get update && apt-get install -y \
    libpq-dev && \

    pip install uwsgi

# Expose
EXPOSE 8000