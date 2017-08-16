OPTIONS (SKIP=1)
load data 
infile '.\ABBR.dsv'
replace
into table MOTOR_ABBR
fields terminated by '|'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( "ABBREV" CHAR(4000),
             "DEFINITION" CHAR(4000)
           )
