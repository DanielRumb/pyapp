FROM python:3
WORKDIR pythonProject
#RUN main.py
CMD [ "python3", "./main.py" ]