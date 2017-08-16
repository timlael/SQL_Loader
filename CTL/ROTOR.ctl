OPTIONS (SKIP=1)
load data 
infile '.\ROTOR.dsv'
replace
into table MOTOR_ROTOR
fields terminated by '|'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( RECNO CHAR(4000),
             SUBMOD CHAR(4000),
             POS CHAR(4000),
             MAXPAR CHAR(4000),
             NOTP CHAR(4000),
             RUNOUT CHAR(4000),
             NOTR CHAR(4000),
             NOMT CHAR(4000),
             NOTT CHAR(4000),
             MINMACH CHAR(4000),
             NOTM CHAR(4000),
             DISCARD CHAR(4000),
             NOTD CHAR(4000),
             FINISH CHAR(4000),
             NOTF CHAR(4000)
           )
