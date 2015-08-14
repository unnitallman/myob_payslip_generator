class CsvExporter
  def initialize(rows, file)
    @rows = rows
    @file = file
  end

  def export
    open(@file, 'w') do |f|
      write_csv @rows, f
    end
  end

  private

  def write_csv(rows, file)
    CSV.dump(rows, file)
  end
end