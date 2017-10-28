/*===================================================================*/
/* Program retrieves job attributes and returns it to log program     */
/*===================================================================*/
PGM (&jobname &jobuser &jobnum)
  dcl &jobname *char 10
  dcl &jobuser *char 10
  dcl &jobnum *char 6

             RTVJOBA    JOB(&JOBNAME) USER(&JOBUSER) NBR(&JOBNUM)

ENDPGM
