REPORT zpractice2.

TYPES: BEGIN OF ty_result,
         emp_name TYPE zemployee-emp_name,
         salary   TYPE zsalary-salary,
       END OF ty_result.

DATA: ls_result TYPE ty_result,
      lt_result TYPE TABLE OF ty_result.

SELECT a~emp_name,
       b~salary
  FROM zemployee AS a
  INNER JOIN zsalary AS b
    ON a~salary_id = b~salary_id
  WHERE b~salary > 50000
  INTO TABLE lt_result.

WRITE: / 'Employee Name', 30 'Salary'.
WRITE: / '--------------------------------'.

LOOP AT lt_result INTO ls_result.
  WRITE: / ls_result-emp_name,
           30 ls_result-salary.
ENDLOOP.