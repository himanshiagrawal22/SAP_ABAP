REPORT zstudent.

START-OF-SELECTION.

  PERFORM display_student USING 'Rahul' 'IT'.

  PERFORM display_student USING 'Priya' 'CSE'.

FORM display_student USING p_name
                           p_branch.

  WRITE: / 'Name   :', p_name.
  WRITE: / 'Branch :', p_branch.
  WRITE: /.

ENDFORM.

*------------------------------------------
output-
Rahul IT
Priya CSE