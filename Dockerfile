FROM python:3.8-alpine
COPY ./requirements.txt /app/requirements.txt
WORKDIR /pythonProject
COPY . /pythonProject
RUN pip install -r requirements.txt
ENTRYPOINT [ "python" ]
CMD ["view.py" ]