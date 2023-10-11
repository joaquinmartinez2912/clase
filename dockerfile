FROM python:3.9-alpine

WORKDIR /clase
COPY . /clase

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5005

ENV FLASK_APP=app/__init__.py
ENV FLASK_RUN_HOST=0.0.0.0


#ENTRYPOINT [ "python" ] 
CMD ["sh", "run.sh"]

# CMD ["flask","run","--host=0.0.0.0", "--port=5005"]

#"sh","run.sh",