class Employee
  attr_reader :name

  def initialize(first_name,last_name, annual_salary)
    @first_name = first_name
    @last_name  = last_name
    @annual_salary = annual_salary
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def annual_salary
    @annual_salary
  end
end