import mysql.connector
import configparser


class Database(object):
    @classmethod
    def create_connection(cls):
        config_parser = configparser.ConfigParser()
        config_parser.read('config.ini')
        user = config_parser.get('DB_SECTION','user')
        print(user)
        password = config_parser.get('DB_SECTION','password')
        print(password)
        database = config_parser.get('DB_SECTION','database')
        print(database)
        connection = mysql.connector.connect(user=user, password=password, database=database)
        assert isinstance(connection, object)
        return connection

    @classmethod
    def query(cls):
        sql = 'select * from employee'
        conn = Database.create_connection()
        cursor = conn.cursor()
        cursor.execute(sql)
        result_set = cursor.fetchall()
        cursor.close()
        conn.close()
        return result_set



if __name__ == '__main__':
    #Database.create_connection()
    print(Database.query())