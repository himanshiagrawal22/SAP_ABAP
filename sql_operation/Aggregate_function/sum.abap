REPORT zsum.

DATA lv_sum TYPE zstudent-cgpa.

SELECT SUM( cgpa )
  FROM zstudent
  INTO lv_sum.

WRITE: / 'Total CGPA:', lv_sum.