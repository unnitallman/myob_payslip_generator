class CsvExporter
  def initialize(rows, file)
    @rows = rows
    @file = file
  end

  def export
    CSV.open(@file, "wb") do |csv|
      @rows.each do |row|
        csv << row
      end
    end
  end
end