require 'spec_helper'

describe Employee do
  before do
    @employee = Employee.new('Marsellus', 'Wallace', 999)
  end
  
  describe "name" do
    it "should be 'Marsellus Wallace'" do
      expect(@employee.name).to eq 'Marsellus Wallace' 
    end
  end

  describe "annual salary" do
    it "should be 999" do
      expect(@employee.annual_salary).to eq 999
    end
  end
end