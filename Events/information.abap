📚 MESSAGE TYPE 'I' (Information)
TYPE 'I' displays an information popup.
Unlike TYPE 'S', it opens a dialog box.
*----------------------------------------------------------
REPORT zmessage_i.

START-OF-SELECTION.

MESSAGE 'This is an Information Message' TYPE 'I'.

WRITE: / 'Program Continued'.

*--------------------------------------------------------------
A popup appears like this:

+----------------------------------+
| Information                      |
|                                  |
| This is an Information Message   |
|                                  |
|              OK                  |
+----------------------------------+

The user must click OK.
After clicking OK, the program continues.
Output:
Program Continued