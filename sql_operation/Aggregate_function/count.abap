REPORT zcount.

DATA lv_count TYPE i.

SELECT COUNT(*)
  FROM zstudent
  INTO lv_count.

WRITE: / 'Total Students:', lv_count.