OPTIONS (SKIP=1)
load data 
infile '.\CALIPER.dsv'
replace
into table MOTOR_CALIPER
fields terminated by '|'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( RECNO CHAR(4000),
             SUBMOD CHAR(4000),
             APPL CHAR(4000),
             FTORQ CHAR(4000),
             RTORQ CHAR(4000),
             NOTE CHAR(4000)
           )
