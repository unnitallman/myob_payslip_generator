# • pay period = per calendar month
# • gross income = annual salary / 12 months
# • income tax = based on the tax table provide below
# • net income = gross income - income tax
# • super = gross income x super rate

class PaySlip
  def initialize(employee, super_rate, payment_date_range)
    @employee   = employee
    @super_rate = super_rate
    @payment_date_range = payment_date_range
  end

  def generate
  end

  private

  def gross_income
    @employee.annual_salary/12
  end

  def income_tax
    IncomeTaxCalculator.new(@employee.annual_salary).calculate/12
  end

  def net_income
    gross_income - income_tax
  end

  def super_amount
    gross_income * @super_rate
  end
end