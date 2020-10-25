import mysql.connector
import configparser


class Database(object):
    @classmethod
    def create_connection(cls):
        config_parser = configparser.ConfigParser()
        config_parser.read('config.ini')
        user = config_parser.get('DB_SECTION', 'user')
        password = config_parser.get('DB_SECTION', 'password')
        database = config_parser.get('DB_SECTION', 'database')
        connection = mysql.connector.connect(user=user, password=password, database=database)
        return connection


if __name__ == '__main__':
    Database.create_connection()