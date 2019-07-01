require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees

    def initialize(name,funding,salaries)
        # A name of the startup as a string
        @name = name
        ##funding fo the startup
        @funding = funding
        # A hash contaning TITLE as a key and SALARY as a value
        @salaries = salaries
        # A list of all employees
        @employees = [] 
    end

    def valid_title?(title)
        return false if !self.salaries.key?(title)
        return true
    end

    def >(outer_startup)
        return true if outer_startup.funding < self.funding
        return false
    end

    def hire(employee_name,there_title)
        if salaries.key?(there_title)
            new_employee = Employee.new(employee_name,there_title) 
            self.employees << new_employee
        else
            raise "invalid title"
        end
    end

    def size
        employees.length
    end

    def pay_employee(employee_name)
        # employee_name is comeing in as an instance of the employee class
        payment = salaries[employee_name.title]
        if funding > payment
            employee_name.pay(payment)
            @funding -= payment
        else
            raise "not enuf funds "
        end
    end

    def payday
        self.employees.each {|ele| pay_employee(ele)}
    end

    def average_salary
        salaries_ave = []
        self.employees.each {|ele| salaries_ave << salaries[ele.title]}
        salaries_ave.sum / salaries_ave.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(another_startup)
        @funding += another_startup.funding
        new_sal = {}
        another_startup.salaries.each {|k,v| new_sal[k] = v}
        @salaries.each {|k,v| new_sal[k] = v}
        @salaries = new_sal
        @employees = self.employees + another_startup.employees
        another_startup.close
    end


end
