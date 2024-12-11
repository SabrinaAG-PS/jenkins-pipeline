#second attempt
# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "academy@release.works"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8080 || exit 1

# tell docker what port to expose
EXPOSE 8080


# First attempt

# FROM python:3.7-alpine
# RUN mkdir -p /app
# WORKDIR /app
# COPY hello_there.py /app/
# # RUN npm install 
# COPY . /app/
# EXPOSE 8080
# CMD ["python", "-c", "print( 'Hi there!' )"]