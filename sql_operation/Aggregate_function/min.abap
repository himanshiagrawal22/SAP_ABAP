REPORT zmax.

DATA lv_min TYPE zstudent-cgpa.   

SELECT MIN( cgpa )
  FROM zstudent
  INTO lv_min.

WRITE: / 'Maximum CGPA:', lv_min.