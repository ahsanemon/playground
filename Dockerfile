FROM python:3.8
COPY helloWorld.py /helloWorld.py
CMD [ "python", "/helloWorld.py" ]
