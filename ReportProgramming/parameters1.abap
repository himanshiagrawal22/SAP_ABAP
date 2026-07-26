*What is a PARAMETER?
*A parameter is an input field displayed on the selection screen. It allows the user 
*to provide a value at runtime, making the report dynamic.
*-------------------------------------------------------------------

REPORT zparameter.

PARAMETERS: p_roll TYPE zstudent-roll_no.

DATA: ls_student TYPE zstudent.

SELECT SINGLE *
  FROM zstudent
  INTO ls_student
  WHERE roll_no = p_roll.

IF sy-subrc = 0.
  WRITE: / 'Roll Number', 30 'Name', 50 'Branch'.
  WRITE: / '------------------------------------------'.
  WRITE: / ls_student-roll_no,
           30 ls_student-name,
           50 ls_student-branch.
ELSE.
  WRITE: / 'Record Not Found'.
ENDIF.