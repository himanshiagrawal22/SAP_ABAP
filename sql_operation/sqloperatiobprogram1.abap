REPORT zsql_operations.

"Structure
DATA: ls_student TYPE zstudent.

"Internal Table
DATA: lt_student TYPE TABLE OF zstudent.

*----------------------------------------------------------------------
* INSERT
*----------------------------------------------------------------------
ls_student-roll_no = 1.
ls_student-name    = 'Himanshi'.
ls_student-branch  = 'IT'.

INSERT zstudent FROM ls_student.

IF sy-subrc = 0.
  WRITE: / 'Record Inserted Successfully'.
ELSE.
  WRITE: / 'Insert Failed'.
ENDIF.

*----------------------------------------------------------------------
* SELECT SINGLE
*----------------------------------------------------------------------
SELECT SINGLE *
  FROM zstudent
  INTO ls_student
  WHERE roll_no = 1.

IF sy-subrc = 0.
  WRITE: / 'Student Found:',
           ls_student-roll_no,
           ls_student-name,
           ls_student-branch.
ELSE.
  WRITE: / 'Student Not Found'.
ENDIF.

*----------------------------------------------------------------------
* SELECT (Multiple Records)
*----------------------------------------------------------------------
SELECT *
  FROM zstudent
  INTO TABLE lt_student
  WHERE branch = 'IT'
  ORDER BY roll_no.

LOOP AT lt_student INTO ls_student.

  WRITE: / ls_student-roll_no,
           ls_student-name,
           ls_student-branch.

ENDLOOP.

*----------------------------------------------------------------------
* UPDATE
*----------------------------------------------------------------------
UPDATE zstudent
  SET branch = 'CSE'
  WHERE roll_no = 1.

IF sy-subrc = 0.
  WRITE: / 'Record Updated Successfully'.
ELSE.
  WRITE: / 'Update Failed'.
ENDIF.

*----------------------------------------------------------------------
* MODIFY
*----------------------------------------------------------------------
ls_student-roll_no = 2.
ls_student-name    = 'Rahul'.
ls_student-branch  = 'ECE'.

MODIFY zstudent FROM ls_student.

IF sy-subrc = 0.
  WRITE: / 'Record Modified Successfully'.
ELSE.
  WRITE: / 'Modify Failed'.
ENDIF.

*----------------------------------------------------------------------
* DELETE
*----------------------------------------------------------------------
DELETE FROM zstudent
  WHERE roll_no = 2.

IF sy-subrc = 0.
  WRITE: / 'Record Deleted Successfully'.
ELSE.
  WRITE: / 'Delete Failed'.
ENDIF.