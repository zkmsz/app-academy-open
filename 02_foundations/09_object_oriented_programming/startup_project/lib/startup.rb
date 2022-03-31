require "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    @salaries.key?(title)
  end

  def >(startup)
    @funding > startup.funding
  end

  def hire(employee_name, title)
    @employees << Employee.new(employee_name, title) if valid_title?(title)
    raise "title does not exist" if !valid_title?(title)
  end

  def size
    @employees.count
  end

  def pay_employee(employee)
    amount = @salaries[employee.title]
    if @funding > amount
      employee.pay(amount)
      @funding -= amount
    else
      raise "not enough funds to pay employee"
    end
  end

  def payday
    @employees.each { |employee| pay_employee(employee) }
  end

  def average_salary
    total = []
    @employees.each { |employee| total << @salaries[employee.title] }
    average = total.sum / total.size.to_f
    average
  end

  def close
    @employees = []
    @funding = 0
  end

  def acquire(startup)
    @funding += startup.funding

    startup.salaries.each do |title, salary|
      @salaries[title] = salary if !@salaries[title]
    end

    # startup.employees.each { |employee| @employees << employee }
    @employees += startup.employees
    startup.close
  end
end
