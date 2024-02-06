class Employee:
    company_name=None

    def __init__(self):
        print("Employee object created!!")
        self.emp_id=None
        self.emp_name=None
        self.emp_salary=None

    def print_employee_detail(self):
        print(50 * "-")
        self.second_name="jack"
        print(self.emp_id)
        print(self.emp_name)
        print(self.emp_salary)
        print(Employee.company_name)
        print(50*"-")

    @staticmethod
    def author_name():
        print("Balaji Dinakaran")