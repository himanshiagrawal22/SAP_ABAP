REPORT zmax.

DATA lv_max TYPE zstudent-cgpa.   
"Because MAX(cgpa) returns a value of the same data type as the cgpa column.

SELECT MAX( cgpa )
  FROM zstudent
  INTO lv_max.

WRITE: / 'Maximum CGPA:', lv_max.