REPORT zhaving.

TYPES: BEGIN OF ty_result,
         branch TYPE zstudent-branch,
         count  TYPE i,
       END OF ty_result.

DATA:
  ls_result TYPE ty_result,
  lt_result TYPE TABLE OF ty_result.

SELECT branch,
       COUNT( * ) AS count  "Put the result of COUNT(*) into the field count.
  FROM zstudent
  INTO TABLE lt_result
  GROUP BY branch
  HAVING COUNT( * ) > 1.

LOOP AT lt_result INTO ls_result.
  WRITE: / ls_result-branch,
           ls_result-count.
ENDLOOP.