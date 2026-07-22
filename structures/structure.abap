REPORT zstructure.

TYPES: BEGIN OF ty_student,
         roll_no TYPE i,
         name    TYPE string,
         branch  TYPE string,
         cgpa    TYPE f,
       END OF ty_student.

DATA ls_student TYPE ty_student.

ls_student-roll_no = 1.
ls_student-name    = 'Himanshi'.
ls_student-branch  = 'Information Technology'.
ls_student-cgpa    = 8.5.

WRITE: / 'Roll No :', ls_student-roll_no,
       / 'Name    :', ls_student-name,
       / 'Branch  :', ls_student-branch,
       / 'CGPA    :', ls_student-cgpa.