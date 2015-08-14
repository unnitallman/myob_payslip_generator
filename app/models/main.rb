CWD = __FILE__

require File.join(CWD, 'csv_exporter')
require File.join(CWD, 'csv_importer')
require File.join(CWD, 'employee')
require File.join(CWD, 'pay_slip')
require File.join(CWD, 'income_tax_calculator')

input_file  = 'path/to/file.csv'
output_file = 'path/to/file_payslip.csv'

input_data = CsvImporter.new(input_file).import

PaySlipsGenerator.new(input_data).run

CsvExporter.new(output_data, output_file).export