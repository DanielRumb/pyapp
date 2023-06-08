FROM python:3.8-alpine
COPY ./requirements.txt /app/requirements.txt
WORKDIR /pythonProject
RUN pip install -r requirements.txt
COPY . /pythonProject
ENTRYPOINT [ "python" ]
CMD ["view.py" ]