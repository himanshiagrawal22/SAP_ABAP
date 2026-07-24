*Suppose the interviewer asks:

*Why didn't you use TYPE zstudent?

*A strong answer is:

*Because the result of the GROUP BY query doesn't match the structure of zstudent. 
The query returns only branch and count, so I created a custom structure (ty_result) 
containing exactly those fields."
*-----------------------------------------------------------------------------------------

REPORT zgroupby.

TYPES: BEGIN OF ty_student,
         branch TYPE zstudent-branch,
         count  TYPE i,
       END OF ty_student.

DATA:
  ls_student TYPE ty_student,
  lt_student TYPE TABLE OF ty_student.

SELECT branch,
       COUNT( * )
  FROM zstudent
  INTO TABLE lt_student
  GROUP BY branch.

LOOP AT lt_student INTO ls_student.

  WRITE: / ls_student-branch,
           ls_student-count.

ENDLOOP.