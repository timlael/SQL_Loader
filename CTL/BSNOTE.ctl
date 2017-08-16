OPTIONS (SKIP=1)
load data 
infile '.\BSNOTE.dsv'
replace
into table MOTOR_BSNOTE
fields terminated by '|'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( CODE CHAR(4000),
             LN CHAR(4000),
             NOTE CHAR(4000)
           )
