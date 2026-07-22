REPORT zdelete.

TYPES: BEGIN OF ty_student,
         roll_no TYPE i,
         name    TYPE string,
       END OF ty_student.

DATA: ls_student TYPE ty_student,
      lt_student TYPE TABLE OF ty_student.

ls_student-roll_no = 1.
ls_student-name = 'Himanshi'.
APPEND ls_student TO lt_student.

ls_student-roll_no = 2.
ls_student-name = 'Rahul'.
APPEND ls_student TO lt_student.

ls_student-roll_no = 3.
ls_student-name = 'Priya'.
APPEND ls_student TO lt_student.

DELETE lt_student WHERE roll_no = 2.

WRITE: / 'Student List After Delete:'.

LOOP AT lt_student INTO ls_student.
  WRITE: / ls_student-roll_no,
           ls_student-name.
ENDLOOP.