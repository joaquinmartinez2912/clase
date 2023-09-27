FROM python:3.10.12
COPY . /clase
WORKDIR /clase
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5005

ENV FLASK_APP=app/__init__.py
ENV FLASK_RUN_HOST=0.0.0.0


ENTRYPOINT [ "python" ] 
CMD [ "flask","run"]
