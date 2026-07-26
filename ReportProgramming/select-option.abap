REPORT zpractice.

SELECT-OPTIONS: s_roll FOR zstudent-roll_no.

DATA:
  ls_student TYPE zstudent,
  lt_student TYPE TABLE OF zstudent.

SELECT *
  FROM zstudent
  INTO TABLE lt_student
  WHERE roll_no IN s_roll.

IF lt_student IS NOT INITIAL.

  LOOP AT lt_student INTO ls_student.
    WRITE: / ls_student-roll_no,
             ls_student-name,
             ls_student-branch.
  ENDLOOP.

ELSE.
  WRITE: / 'Record Not Found'.
ENDIF.