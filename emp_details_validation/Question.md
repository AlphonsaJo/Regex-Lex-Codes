Lex Programming Assignment: Employee Data Validation

Objective
Develop a Lex program to process and validate employee information from an input file, focusing on Social Security Numbers (SSNs), email addresses, and passwords. The program should output valid entries and perform specific manipulations on the data.
Requirements

Input Processing:

Read employee details from an input file named "input.txt".
Each line of the input file contains one piece of information (SSN, email, or password).


Data Validation:

Validate SSNs using the format: XXX-XX-XXXX (where X is a digit).
Validate email addresses using the format: username@companyname.com
Validate passwords based on the following criteria:

Must be exactly 8 characters long
First character must be uppercase
Must contain at least one lowercase letter
Must contain at least one digit
Must contain at least one special character




Output Generation:

Create an output file named "output.txt".
Write all valid SSNs and email addresses to the output file.
For valid passwords, write "NOHACKER" instead of the actual password.


Statistical Analysis:

Count the number of valid SSNs found in the input file.
Write this count at the end of the output file.

Implementation Details

Use appropriate regular expressions for each type of data validation.
Implement the solution using Lex (Flex).    
Include necessary C code for file operations and counting.

Deliverables

A .l file containing your Lex program.
A brief report (max 1 page) explaining your regular expressions and any challenges faced.

Evaluation Criteria

Correctness of regular expressions
Proper implementation of file I/O operations
Accurate counting of valid SSNs
Code readability and comments
Handling of edge cases
