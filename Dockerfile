FROM python:3.7-alpine
RUN mkdir -p /app
WORKDIR /app
COPY hello_there.py /app/
# RUN npm install 
COPY . /app/
EXPOSE 8080
CMD ["python", "-c", "print( 'Hi there!' )"]