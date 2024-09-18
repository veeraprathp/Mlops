# use the  official python image from  the Docker Hub

FROM python:3.9-slim

#set the working directory
WORKDIR/app

#Copy the current directory contents into the container at /app

COPY . /app

#Install any needed packages specified in requirments.txt

RUN pip install flask

#make port 5000 available to the world outside this container

EXPOSE 5000

#Run app.py when the container launches

CMD["pyhton", "app.py"]