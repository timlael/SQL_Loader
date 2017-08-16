OPTIONS (SKIP=1)
load data 
infile '.\DRUM.dsv'
replace
into table MOTOR_DRUM
fields terminated by '|'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( RECNO CHAR(4000),
             SUBMOD CHAR(4000),
             TYPE CHAR(4000),
             NOMDIA CHAR(4000),
             RUNOUT CHAR(4000),
             MAXMACH CHAR(4000),
             DISCARD CHAR(4000),
             NOTD CHAR(4000)
           )
