REPORT zpractice2.

TYPES: BEGIN OF ty_result,
         st_name   TYPE zstudent-st_name,
         dept_name TYPE zdepartment-dept_name,
         cgpa      TYPE zmarks-cgpa,
       END OF ty_result.

DATA: ls_result TYPE ty_result,
      lt_result TYPE TABLE OF ty_result.

SELECT a~st_name,
       b~dept_name,
       c~cgpa
  FROM zstudent AS a
  INNER JOIN zdepartment AS b
    ON a~dept_id = b~dept_id
  INNER JOIN zmarks AS c
    ON a~roll_no = c~roll_no
  INTO TABLE lt_result.

WRITE: / 'Student Name', 25 'Department', 50 'CGPA'.
WRITE: / '---------------------------------------------------------'.

LOOP AT lt_result INTO ls_result.
  WRITE: / ls_result-st_name,
           25 ls_result-dept_name,
           50 ls_result-cgpa.
ENDLOOP.