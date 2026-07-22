REPORT zmodify.

TYPES: BEGIN OF ty_student,
         roll_no TYPE i,
         name    TYPE string,
       END OF ty_student.

DATA: ls_student TYPE ty_student,
      lt_student TYPE TABLE OF ty_student.

* Add Student 1
ls_student-roll_no = 1.
ls_student-name    = 'Himanshi'.
APPEND ls_student TO lt_student.

* Add Student 2
ls_student-roll_no = 2.
ls_student-name    = 'Rahul'.
APPEND ls_student TO lt_student.

* Add Student 3
ls_student-roll_no = 3.
ls_student-name    = 'Priya'.
APPEND ls_student TO lt_student.


* Search Student
READ TABLE lt_student INTO ls_student
     WITH KEY roll_no = 2.

IF sy-subrc = 0.
  ls_student-name = 'Rohan'.
  MODIFY lt_student FROM ls_student INDEX sy-tabix.
  WRITE: / 'Record Updated Successfully'.

ELSE.
  WRITE: / 'Student Not Found'.
ENDIF.

* Display All Students
WRITE: /.
WRITE: / 'Updated Student List:'.
LOOP AT lt_student INTO ls_student.
  WRITE: / ls_student-roll_no,
           ls_student-name.
ENDLOOP.