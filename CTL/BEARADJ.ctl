OPTIONS (SKIP=1)
load data 
infile '.\BEARADJ.dsv'
replace
into table MOTOR_BEARADJ
fields terminated by '|'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( "CODE" CHAR(4000),
             "LN" CHAR(4000),
             "PROCEDURE" CHAR(4000)
           )
