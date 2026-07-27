USING passes values to a FORM for processing.
CHANGING passes values to a FORM, allows the FORM to modify them, and returns the updated 
values to the caller.

*--------------------------------------------------------
REPORT zex.

DATA: gv_marks TYPE i VALUE 75.

START-OF-SELECTION.

  PERFORM update_marks USING 10
                       CHANGING gv_marks.

  WRITE: / 'Final Marks:', gv_marks.

FORM update_marks USING p_bonus
                  CHANGING p_marks.

  p_marks = p_marks + p_bonus.

ENDFORM.