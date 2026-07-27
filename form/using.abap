Using is used to pass the value to the from
*-----------------------------------------
START-OF-SELECTION.

PERFORM display_name USING 'Rahul'.
PERFORM display_name USING 'Priya'.

FORM display_name USING p_name.

  WRITE: / p_name.

ENDFORM.

*------------------------------------
Outpu-
Rahul
Priya