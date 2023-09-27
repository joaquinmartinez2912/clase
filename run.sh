flask db init
flask db migrate -m "initail migration"
flask db upgrade
gunicorn app:app --bind 0.0.0.0.:5005
