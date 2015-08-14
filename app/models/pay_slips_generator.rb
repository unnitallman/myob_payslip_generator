class PaySlipsGenerator
  def initialize(rows)
    @rows = rows
  end

  def run
    @rows.map do |row|
      PaySlip.new(*row).generate
    end
  end
end