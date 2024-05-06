# dockerfile
FROM python:3.8

WORKDIR /root

COPY . /root

RUN  pip install -r requirements.txt


CMD ["bash"]
 
