FROM python:3.10.12
COPY . /clase
WORKDIR /clase
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5005
ENTRYPOINT [ "python" ] 
CMD [ "app/__init__.py" ]
