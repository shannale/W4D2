require "byebug"
require_relative "employee.rb"


class Manager < Employee
    attr_reader :employees
    
    def initialize(name, title, salary, boss = nil)
        super(name, title, salary, boss)
        @employees = []
    end 

    # def total_employees
    #     @employees << self unless self.boss.nil?
    # end

    def add_employee(new_employee)
        new_employee.boss = self
        @employees << new_employee
    end

    def total_salaries
        sum = 0
        # debugger
        @employees.each do |employee|
            if employee.is_a?(Manager) 
                sum += employee.salary
                sum += employee.total_salaries
                # p employee.total_salaries
            else 
                salary = employee.salary
                sum += salary
            end 
            # p sum
        end 
        sum
        
    end

    def bonus(multiplier)
        total_salaries * multiplier
    end 
end

# ned = Manager.new("ned", "founder", 1_000_000, nil)
# darren = Manager.new("darren", "ta manager", 78_000, 'ned')
# shawna = Employee.new('shawna', 'ta', 12_000, "darren")
# david = Employee.new('david', 'ta', 10_000, 'darren')
# ned.add_employee(darren)
# darren.add_employee(shawna)
# darren.add_employee(david)
# # p ned.employees
# p ned.bonus(5)
