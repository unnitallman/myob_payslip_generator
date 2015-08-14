#  |  Name   |          Range         |   Tax
#  ---------------------------------------------------------------------------------
#  |   A     |   0 - $18,200          |   Nil
#  |   B     |   $18,201 - $37,000    |   19c for each $1 over $18,200
#  |   C     |   $37,001 - $80,000    |   $3,572 plus 32.5c for each $1 over $37,000
#  |   D     |   $80,001 - $180,000   |   $17,547 plus 37c for each $1 over $80,000
#  |   E     |   $180,001 and over    |   $54,547 plus 45c for each $1 over $180,000

class IncomeTaxCalculator
  attr_reader :annual_income

  def initialize(annual_income)
    @annual_income = annual_income
  end

  def calculate
    t = tax_rate
    t[:minimum_tax] + (annual_income - t[:lower_limit_of_the_range]) * t[:tax_per_extra_dollar]
  end

  private

  def tax_rate
    r = [0,0,0]                if (annual_income <= 18200)
    r = [0, 0.19, 18200]       if (18201  <= annual_income) && (annual_income <= 37000 )
    r = [3572, 0.325, 37000]   if (37001  <= annual_income) && (annual_income <= 80000 )
    r = [17547, 0.370, 80000]  if (80001  <= annual_income) && (annual_income <= 180000)
    r = [54547, 0.450, 180000] if (180001 <= annual_income)

    {
      minimum_tax: r[0],
      tax_per_extra_dollar: r[1]
      lower_limit_of_the_range: r[2]
    }
  end
end