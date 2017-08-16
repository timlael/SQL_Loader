OPTIONS (SKIP=1)
load data 
infile '.\CALIPER_Application.dsv'
replace
into table MOTOR_CALIPER_APPLICATION
fields terminated by '|'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( APPLICATIONID CHAR(4000),
             RECNO CHAR(4000),
             BASEVEHICLEID CHAR(4000),
             REGIONID CHAR(4000),
             VEHICLETOENGINECONFIGID CHAR(4000)
           )
