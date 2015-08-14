class PaySlipsGenerator
  def initialize(rows)
    @rows = rows
  end

  def run
    @rows.map do |row|
      d          = transform_data row
      employee   = Employee.new d.first_name, d.last_name, d.annual_salary
      PaySlip.new(employee, d.super_rate, d.payment_date_range).generate
    end
  end

  private

  # Row will be of the form ['David','Rudd','60050','9%','01 March – 31 March']
  def transform_data(row)
    OpenStruct.new(
      first_name:         row[0],
      last_name:          row[1],
      annual_salary:      string_to_float(rows[2]),
      super_rate:         percentage_to_rate(row[3]),
      payment_date_range: row[4]
    )
  end

  # Convert '9%' to 0.09
  def percentage_to_rate(value)
    value.to_f/100
  end

  # '60050' to 60050.0
  def string_to_float(value)
    value.to_f
  end
end