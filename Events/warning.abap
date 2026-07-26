TYPE 'W' stands for Warning.
A warning tells the user:
"Something may be wrong, but you can still continue."
Unlike TYPE 'E', it does not permanently stop the program.
*----------------------------------------------------------

REPORT zwarning.

START-OF-SELECTION.

MESSAGE 'This is a Warning Message' TYPE 'W'.

WRITE: / 'Program Continued'.

*--------------------------------------------------------------
SAP displays a warning popup like this:

+--------------------------------+
| Warning                        |
|                                |
| This is a Warning Message      |
|                                |
|             OK                 |
+--------------------------------+

After clicking OK, the program continues.
Output:
Program Continued