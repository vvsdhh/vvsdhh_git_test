class Employee(object):
    def __init__(self, code, name, *, salary=0.0, **kwargs):
        self.code = code
        self.name = name
        self.salary = salary
        print(kwargs)


if __name__ == '__main__':
    # employee = Employee()
    # employee.cold = 'E01'
    # employee.name = 'Jacky'
    # print(employee.cold,employee.name)
    data = {'email': '123', 'phone': '1234'}
    employee = Employee('E01', 'Jacky', **data)
    print(employee.code, employee.name)
    print(employee.salary)
    
    
    
    
    
    # {'email': '123', 'phone': '1234'}
    # E01 Jacky
    # 0.0

    # Process finished with exit code 0
