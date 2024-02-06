from python_demo3.demo1_employee import Employee

print(Employee.company_name)
Employee.company_name="Tata Tech"

emp1=Employee()
emp2=Employee()
emp3=Employee()


emp1.emp_id=101
emp1.emp_name="saul"
emp1.emp_salary=8000

emp2.emp_id=102
emp2.emp_name="kim"
emp2.emp_salary=5000

print(emp1)
print(emp2)
print(emp3)
print(type(emp1))

print(emp1.emp_id)
print(emp1.emp_salary)


print(emp2.emp_id)
print(emp2.emp_salary)

print(emp3.emp_id)

emp2.print_employee_detail()

emp1.print_employee_detail()

emp3.print_employee_detail()