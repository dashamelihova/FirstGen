 class Employee:  
   
    emp_count = 0  
  
    def __init__(self, name, salary):  
        self.name = name  
        self.salary = salary  
        Employee.emp_count += 1  
  
    def display_count(self):  
        print('Всего сотрудников: %d' % Employee.emp_count)
        
    def display_employee(self):  
        print('Имя: {}. Зарплата: {}'.format(self.name, self.salary))  
"""
class created
"""
class Point:  
    def __init__(self, x=0, y=0):  
        self.x = x  
        self.y = y  
  
    def __del__(self):  
        class_name = self.__class__.__name__  
        print('{} уничтожен'.format(class_name))  
   
  
# Это создаст первый объект класса Employee  
emp1 = Employee("Андрей", 2000)  
# Это создаст второй объект класса Employee  
emp2 = Employee("Мария", 5000)  
emp1.display_employee()  
emp2.display_employee()  
print("Всего сотрудников: %d" % Employee.emp_count)