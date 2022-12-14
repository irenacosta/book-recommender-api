FROM python:3-alpine

# Create app directory
WORKDIR /nextbook-api

# Install app dependencies
COPY requirements.txt ./


# Bundle app source
COPY . .

EXPOSE 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]