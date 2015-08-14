require 'spec_helper'

describe PaySlip do
  before do
    employee = double()
    employee.stub(:name) { 'Marsellus Wallace' }
    employee.stub(:annual_salary) { 60050 }

    @pay_slip = PaySlip.new(employee, 0.09 , '01 March – 31 March')
  end
  
  describe "gross_income" do
    it "should be 5004" do
      expect(@pay_slip.gross_income).to eq 5004
    end
  end

  describe "income_tax" do
    it "should be 922" do
      expect(@pay_slip.income_tax).to eq 922
    end
  end

  describe "net_income" do
    it "should be 4082" do
      expect(@pay_slip.net_income).to eq 4082
    end
  end

  describe "super" do
    it "should be 450" do
      expect(@pay_slip.super_amount).to eq 450
    end
  end

  describe "generate" do
    it "should be an array" do
      expect(@pay_slip.generate).to eq ["Marsellus Wallace", "01 March – 31 March", 5004, 922, 4082, 450]
    end
  end


end