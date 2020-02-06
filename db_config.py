from app import app
from flaskext.mysql import MySQL

mysql = MySQL()
 
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'Eclerx@20199'
app.config['MYSQL_DATABASE_DB'] = 'roytuts'
app.config['MYSQL_DATABASE_HOST'] = '192.168.22.2'
mysql.init_app(app)
