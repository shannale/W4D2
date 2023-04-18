require_relative "employee.rb"


class Manager < Employee
    attr_reader :employees
    
    def initialize(name, title, salary, boss = nil)
        super(name, title, salary, boss)
        @employees = []
    end 

    # def total_employees
    #     @employees << self if self.boss.nil?
    # end

    def add_employee(grunt)

    end

    def total total_salaries
        @employees.inject(0) do |sum, employee|
            salary = employee.salary
            sum += salary
        end
    end

    def bonus(multiplier)
        total_salaries * multiplier
    end 
end

# ned = Manager.new("ned", "founder", 1_000_000, nil)
# darren = Manager.new("darren", "ta manager", 78_000, "ned")

# shawna = Manager.new('shawna', 'ta', 12_000, "darren")
# david = Manager.new('david', 'ta', 10_000, 'darren')
