"This is LEFT OUTER JOIN

"LEFT OUTER JOIN returns all records from the left table and the matching records from the 
right table.

"If no match is found, the right table fields are left blank (initial values).
"----------------------------------------------------------------------------------

REPORT zleftjoin.

TYPES: BEGIN OF ty_result,
         name       TYPE zstudent-name,
         department TYPE zdepartment-department,
       END OF ty_result.

DATA: ls_result TYPE ty_result,
      lt_result TYPE TABLE OF ty_result.

SELECT a~name,
       d~department
  FROM zstudent AS a
  LEFT OUTER JOIN zdepartment AS d
    ON a~dept_id = d~dept_id
  INTO TABLE lt_result.

LOOP AT lt_result INTO ls_result.
  WRITE: / ls_result-name,
           ls_result-department.
ENDLOOP.