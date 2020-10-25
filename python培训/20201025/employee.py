class Employee(object):
    def __init__(self, code, name, **kwargs):
        self.code = code
        self.name = name
        print(kwargs)


if __name__ == '__main__':
    # employee = Employee()
    # employee.cold = 'E01'
    # employee.name = 'Jacky'
    # print(employee.cold,employee.name)
    data = {'email': '123', 'phone': '1234'}
    employee = Employee('E01', 'Jacky', **data)
    
    
    
    
    
    
    # print(employee.code, employee.name)
    # {'email': '123', 'phone': '1234'}
    # E01 Jacky

    # Process finished with exit code 0
