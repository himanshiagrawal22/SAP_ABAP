REPORT zcopy.

TYPES: BEGIN OF ty_employee,
         emp_id   TYPE i,
         emp_name TYPE string,
         salary   TYPE i,
       END OF ty_employee.

DATA: ls_employee1 TYPE ty_employee,
      ls_employee2 TYPE ty_employee.

ls_employee1-emp_id   = 101.
ls_employee1-emp_name = 'Rahul'.
ls_employee1-salary   = 50000.

ls_employee2 = ls_employee1.

WRITE: / 'Employee 1:',
         ls_employee1-emp_id,
         ls_employee1-emp_name,
         ls_employee1-salary.

WRITE: / 'Employee 2:',
         ls_employee2-emp_id,
         ls_employee2-emp_name,
         ls_employee2-salary.