Employee monthly payslip
========================
 
Given an employee's details - first name, last name, annual salary(positive integer),super rate(0% - 50% inclusive) and payment start date, the program should generate payslip information with name, pay period, gross income, income tax, net income and super.
 
The calculation details will be the following:
•       pay period = per calendar month
•       gross income = annual salary / 12 months
•       income tax = based on the tax table provide below
•       net income = gross income - income tax
•       super = gross income x super rate
 
Notes: All calculation results should be rounded to the whole dollar. If >= 50 cents round up to the next dollar increment, otherwise round down.
 
Income tax to be calculated based on http://www.ato.gov.au/content/12333.htm
 
Input CSV Format
----------------

Input (first name, last name, annual salary, super rate (%), payment start date)

David,Rudd,60050,9%,01 March – 31 March

Ryan,Chen,120000,10%,01 March – 31 March

Output CSV Format
-----------------

Output (name, pay period, gross income, income tax, net income, super)

David Rudd,01 March – 31 March,5004,922,4082,450

Ryan Chen,01 March – 31 March,10000,2696,7304,1000

How to use
----------

1. It is a Ruby project and hence you would need to install ruby first. 
2. Clone the repository to your local machine.
3. run ```bundle install``` in the root folder of the app to install the dependencies.
4. To run the application: ```ruby app/main.rb sample/myob_employees.csv```
5. To run the test suite: ```rspec spec/*```
