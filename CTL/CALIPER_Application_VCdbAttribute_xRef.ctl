OPTIONS (SKIP=1)
load data 
infile '.\CALIPER_Application_VCdbAttribute_xRef.dsv'
replace
into table MOTOR_CAL_APP_VCDBATTRIB_XREF
fields terminated by '|'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( APPLICATIONID CHAR(4000),
             ATTRIBUTENAME CHAR(4000),
             ATTRIBUTEID CHAR(4000)
           )
