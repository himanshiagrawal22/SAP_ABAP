REPORT zdistinct.

TYPES: BEGIN OF ty_student,
         branch TYPE zstudent-branch,
       END OF ty_student.

DATA:
  ls_branch TYPE ty_student,
  lt_branch TYPE TABLE OF ty_student.

SELECT DISTINCT branch
  FROM zstudent
  INTO TABLE lt_branch.

LOOP AT lt_branch INTO ls_branch.
  WRITE: / ls_branch-branch.
ENDLOOP.