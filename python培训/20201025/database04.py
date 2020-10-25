import mysql.connector
import configparser
from model.employee import Employee


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

    @classmethod
    def save(cls, emp):
        sql = 'insert into employee (code, name) values (%s, %s)'
        conn = Database.create_connection()
        cursor = conn.cursor()
        cursor.execute(sql, (emp.code, emp.name))
        conn.commit()
        cursor.close()
        conn.close()

    @classmethod
    def update(cls, emp):
        sql = "update employee set code = %s, name = %s where id = %s"
        conn = Database.create_connection()
        cursor = conn.cursor()
        cursor.execute(sql, (emp.code, emp.name, emp.id))
        conn.commit()
        cursor.close()
        conn.close

    @classmethod
    def delete(cls, id):
        sql = "delete from employee where id = %s"
        conn = Database.create_connection()
        cursor = conn.cursor()
        cursor.execute(sql, [id])
        conn.commit()
        cursor.close()
        conn.close


if __name__ == '__main__':
    # Query
    print(Database.query())

    # Save
    # employee = Employee('E03', 'Jim')
    # Database.save(employee)

    # Update
    # employee = Employee("E03", "Jim.Li")
    # employee.id = 3
    # Database.update(employee)

    # Delete
    # Database.delete(3)