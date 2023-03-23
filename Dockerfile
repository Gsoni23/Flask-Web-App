FROM ubuntu
WORKDIR flask_web_app
RUN apt-get install python3
ADD ./requirements.txt requirements.txt
RUN apt-get update && apt-get install -y python3
RUN pip install -r requirements.txt
ADD ./Website Website
ADD ./main.py main.py
CMD ["python","main.py"]