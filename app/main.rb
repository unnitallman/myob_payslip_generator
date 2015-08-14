[ 
  'csv_exporter',
  'csv_importer',
  'employee',
  'income_tax_calculator',
  'pay_slip',
  'pay_slips_generator'
].each do |file|
  require File.join(Dir.pwd,"app","#{file}.rb")
end

# Raise an exception with a 
# human friendly message if input file 
# is not given on the command line
raise "\nUsage: ruby app/main.rb path/to/input-file.csv\n" unless ARGV[0]

begin
  input_file  = ARGV[0]
  output_file = input_file + '.output'

  input_data  = CsvImporter.new(input_file).import
  output_data = PaySlipsGenerator.new(input_data).run

  CsvExporter.new(output_data, output_file).export
rescue
  # If an exception occurs while processing the data from
  # the input file
  puts "\nInput file #{input_file} is not in expected format\n"
else
  # On successful completion of the process
  puts "\nPlease find the payslips at #{output_file}\n"
end