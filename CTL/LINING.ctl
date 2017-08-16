OPTIONS (SKIP=1)
load data 
infile '.\LINING.dsv'
replace
into table MOTOR_LINING
fields terminated by '|'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( RECNO CHAR(4000),
             SUBMOD CHAR(4000),
             LOC CHAR(4000),
             MINPAD CHAR(4000),
             MINSHOE CHAR(4000),
             NOTP CHAR(4000),
             NOTS CHAR(4000)
           )
