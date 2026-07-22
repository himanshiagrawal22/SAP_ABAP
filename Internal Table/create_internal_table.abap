"Structure Program
REPORT zinternal.

"Step 1: Define the Structure
TYPES: BEGIN OF ty_student.
                name TYPE string.
            END OF ty_student.

Step 2: Create a Structure Variable
DATA ls_student TYPE ty_student.

Step 3: Create an Internal Table
DATA lt_student TYPE TABLE OF ty_student.

Step 4: Fill the Structure
ls_student-name='Himanshi'.

Step 5: Add It to the Internal Table
APPEND ls_student TO lt_student.

Add Another Student
ls_student-name='Rahul'.
APPEND ls_student TO lt_student.
ls_student-name='Priya'.
APPEND ls_student TO lt_student.