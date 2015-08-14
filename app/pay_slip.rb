# • pay period = per calendar month
# • gross income = annual salary / 12 months
# • income tax = based on the tax table provide below
# • net income = gross income - income tax
# • super = gross income x super rate

class PaySlip
  attr_reader :employee, :super_rate, :payment_date_range

  def initialize(employee, super_rate, payment_date_range)
    @employee           = employee
    @super_rate         = super_rate
    @payment_date_range = payment_date_range
  end

  def generate
    [
      employee.name,
      payment_date_range,
      gross_income,
      income_tax,
      net_income,
      super_amount
    ]
  end

  private

  def gross_income
    round employee.annual_salary/12
  end

  def income_tax
    round IncomeTaxCalculator.new(employee.annual_salary).calculate/12
  end

  def net_income
    round gross_income - income_tax
  end

  def super_amount
    round gross_income * super_rate
  end


  # 1.4.round  #=> 1
  # 1.5.round  #=> 2
  # 1.6.round  #=> 2
  def round(float)
    float.round
  end
end