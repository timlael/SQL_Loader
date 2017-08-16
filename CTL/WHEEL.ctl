OPTIONS (SKIP=1)
load data 
infile '.\WHEEL.dsv'
replace
into table MOTOR_WHEEL
fields terminated by '|'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( RECNO CHAR(4000),
             SUBMOD CHAR(4000),
             TORQ CHAR(4000),
             FBRNG CHAR(4000),
             RBRNG CHAR(4000),
             NOTT CHAR(4000)
           )
