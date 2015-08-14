require 'spec_helper'

describe IncomeTaxCalculator do
  context "income < 18200" do
    it "tax should be 11063.25" do
      expect(IncomeTaxCalculator.new(60050).calculate).to eq(11063.25)
    end
  end

  context "income = 120000" do
    it "tax should be 32347.0" do
      expect(IncomeTaxCalculator.new(120000).calculate).to eq(32347.0)
    end
  end
end