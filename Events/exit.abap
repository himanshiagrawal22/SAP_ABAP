📚 MESSAGE TYPE 'X' (Exit)
TYPE 'X' is the most severe message type.
It immediately terminates the program by raising a runtime error (short dump).

*--------------------------------------------------------------------------------

REPORT zexit.

START-OF-SELECTION.

WRITE: / 'Step 1'.

MESSAGE 'Unexpected System Error' TYPE 'X'.

WRITE: / 'Step 2'.

*----------------------------------------------------------------------

What Happens?
Step 1
Then SAP immediately produces a short dump (runtime error).
The program stops instantly.
Step 2 is never executed.