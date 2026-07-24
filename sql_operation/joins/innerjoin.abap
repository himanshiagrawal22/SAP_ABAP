REPORT zjoin.

TYPES: BEGIN OF ty_result,
         name       TYPE zstudent-name,
         department TYPE zdepartment-department,
       END OF ty_result.

DATA:
  ls_result TYPE ty_result,
  lt_result TYPE TABLE OF ty_result.

SELECT a~name,
       b~department
  FROM zstudent AS a
  INNER JOIN zdepartment AS b
    ON a~dept_id = b~dept_id
  INTO TABLE lt_result.

LOOP AT lt_result INTO ls_result.
  WRITE: / ls_result-name,
           ls_result-department.
ENDLOOP.