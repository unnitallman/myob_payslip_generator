require 'csv'

class CsvImporter
  def initialize(file)
    @file = open(file)
  end

  def import
    parse
  end

  private

  def parse
    CSV.parse @file.read
  end
end