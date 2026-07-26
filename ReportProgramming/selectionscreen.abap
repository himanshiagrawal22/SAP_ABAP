REPORT zat_selection_screen.

PARAMETERS: p_roll TYPE zstudent-roll_no.

AT SELECTION-SCREEN.

  IF p_roll <= 0.
    MESSAGE 'Roll Number must be greater than 0' TYPE 'E'.
  ENDIF.

START-OF-SELECTION.

  WRITE: / 'Valid Roll Number:', p_roll.


  -------------------------------------------------------------------------
  PROGRAM2
  REPORT zat_selection_screen.

PARAMETERS: p_roll TYPE zstudent-roll_no.

AT SELECTION-SCREEN.

  IF p_roll <= 0.
    MESSAGE 'Roll Number must be greater than 0' TYPE 'E'.
  ENDIF.

START-OF-SELECTION.

  WRITE: / 'Valid Roll Number:', p_roll.