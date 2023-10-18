import os

from flask import Flask
from flask_jwt_extended import (
    JWTManager,
)
from flask_marshmallow import Marshmallow
from dotenv import load_dotenv
from flask_migrate import Migrate
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)   


load_dotenv()
# La variable de entorno es para no subir informacion sensible al repo.
#app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://usuario:contraseña@ip/nombre_db
app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('SQLALCHEMY_DATABASE_URI')
app.config['JWT_SECRET_KEY'] = os.environ.get('JWT_SECRET_KEY')

db = SQLAlchemy(app)
migrate = Migrate(app, db)
jwt = JWTManager(app)
ma = Marshmallow(app)



from app.views import view

if __name__ == "__main__":
    app.run(host="0.0.0.0",port=5005)
