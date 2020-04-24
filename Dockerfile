FROM python:3
MAINTAINER Nilesh Bhadana "nileshbhadana3@gmail.com"
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["hello.py"]
