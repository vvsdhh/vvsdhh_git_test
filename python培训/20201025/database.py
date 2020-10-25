import mysql.connector


class Database(object):
    @classmethod
    def create_connection(cls):
        connection = mysql.connector.connect(user='root', password='ADMIN', database='demo')
        return connection


if __name__ == '__main__':
    Database.create_connection()