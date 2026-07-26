

TYPE 'E' stands for Warning.
A error tells the user:
"Something is wrong, you can not continue."
TYPE 'E', stop the program permanently.

*------------------------------------------------------
REPORT zerror.

PARAMETERS: p_age TYPE i.

AT SELECTION-SCREEN.

  IF p_age < 18.
    MESSAGE 'Age must be 18 or above' TYPE 'E'.
  ENDIF.

START-OF-SELECTION.

  WRITE: / 'Age:', p_age.

*------------------------------------------------------

Age : 15
and presses F8.
SAP displays:
Error:
Age must be 18 or above
The report does not continue.
The cursor returns to the selection screen.