REPORT zavg.

DATA lv_avg TYPE zstudent-cgpa.

SELECT AVG( cgpa )
  FROM zstudent
  INTO lv_avg.

WRITE: / 'Average CGPA:', lv_avg.