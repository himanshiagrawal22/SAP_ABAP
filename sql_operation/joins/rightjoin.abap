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
  RIGHT OUTER JOIN zdepartment AS d   "or can write this also-> FROM zdepartment A d LEFT OUTER JOIN zstudent AS a
    ON a~dept_id = d~dept_id
  INTO TABLE lt_result.

LOOP AT lt_result INTO ls_result.
  WRITE: / ls_result-name,
           ls_result-department.
ENDLOOP.

*Note- ABAP open sql does not support right outer join and full outer join directly we can WRITE
Queries for these using different approach or multiple query
ABAP open sql only support INNER JOIN and LEFT OUTER JOIN