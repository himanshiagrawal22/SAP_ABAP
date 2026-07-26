REPORT zstudent_report.

PARAMETERS: p_roll TYPE zstudent-roll_no.

DATA: ls_student TYPE zstudent.

START-OF-SELECTION.

SELECT SINGLE *
  FROM zstudent
  INTO ls_student
  WHERE roll_no = p_roll.

IF sy-subrc = 0.

  WRITE: / ls_student-roll_no,
           ls_student-name,
           ls_student-branch.

ELSE.

  WRITE: / 'Record Not Found'.

ENDIF.

END-OF-SELECTION.

WRITE: / '--------- End of Report ---------'.