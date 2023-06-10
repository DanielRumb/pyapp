FROM python:3.8-alpine
COPY ./requirements.txt /app/requirements.txt
WORKDIR /pythonProject
COPY . /pythonProject
RUN pip install -r requirements.txt
ENTRYPOINT [ "python3" ]
CMD ["main.py"]
#RUN python3 main.py

FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder /templates /usr/share/nginx/html
COPY ./.nginx/nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["nginx", "-g", "daemon off;"]
