📚 MESSAGE TYPE 'A' (Abort)
TYPE 'A' stands for Abort.
It immediately terminates the program.
Unlike TYPE 'E', it does not return to the selection screen.

*-------------------------------------------------------------

REPORT zabort.

START-OF-SELECTION.

WRITE: / 'Step 1'.

MESSAGE 'Critical Error Occurred' TYPE 'A'.

WRITE: / 'Step 2'.

*----------------------------------------------------------------------

Execution
First:
Step 1
Then SAP shows:
Critical Error Occurred
The program is terminated immediately.
Step 2 is never executed.