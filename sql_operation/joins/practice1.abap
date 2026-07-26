REPORT zpractice2.

TYPES: BEGIN OF ty_result,
         emp_name TYPE zemployee-emp_name,
         salary   TYPE zsalary-salary,
       END OF ty_result.

DATA: ls_result TYPE ty_result.

SELECT SINGLE
       a~emp_name,
       b~salary
  FROM zemployee AS a
  INNER JOIN zsalary AS b
    ON a~salary_id = b~salary_id
  INTO ls_result
  WHERE a~emp_name = 'Riya'.

IF sy-subrc = 0.
  WRITE: / 'Employee Name', 30 'Salary'.
  WRITE: / '--------------------------------'.
  WRITE: / ls_result-emp_name,
           30 ls_result-salary.
ELSE.
  WRITE: / 'Employee not found.'.
ENDIF.