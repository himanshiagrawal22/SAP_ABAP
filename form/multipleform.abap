REPORT zdemo.

START-OF-SELECTION.

PERFORM display_header.
PERFORM display_student.
PERFORM display_footer.

FORM display_header.
  WRITE: / '===== Student Report ====='.
ENDFORM.

FORM display_student.
  WRITE: / 'Roll No: 101'.
  WRITE: / 'Name   : Himanshi'.
ENDFORM.

FORM display_footer.
  WRITE: / '===== End of Report ====='.
ENDFORM.