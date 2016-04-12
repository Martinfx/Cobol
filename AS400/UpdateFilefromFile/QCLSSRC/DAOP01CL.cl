/*===================================================================*/
/* Main application program                                          */
/* Program first checks if required files exist and then calls       */
/* program that operates dataflow of OBRATY to STAVY                 */
/*===================================================================*/
PGM
  DCL        VAR(&LOGMSG) TYPE(*CHAR) LEN(40) /*Log output msg*/
  /* Variables for file check */
  DCL        VAR(&STAVYEXIST) TYPE(*LGL) VALUE('0')
  DCL        VAR(&OBRATEXIST) TYPE(*LGL) VALUE('0')
  DCL        VAR(&LOGFIEXIST) TYPE(*LGL) VALUE('0')
  /* Variable for checking number of records in OBRATY */
  DCL        VAR(&OBRATYREC) TYPE(*DEC) LEN(10 0)
           /* Check if LOG file exist and set variable */
             CHKOBJ     OBJ(FIRSTAPL/LOGP0) OBJTYPE(*FILE)
             MONMSG     MSGID(CPF0000) EXEC(CHGVAR VAR(&LOGFIEXIST) +
                          VALUE('1'))
           /* Check if STAVY file exist and set variable */
             CHKOBJ     OBJ(STAVYP0) OBJTYPE(*FILE)
             MONMSG     MSGID(CPF0000) EXEC(CHGVAR VAR(&STAVYEXIST) +
                          VALUE('1'))
           /* Check if OBRATY file exist and set variable */
             CHKOBJ     OBJ(OBRATYP0) OBJTYPE(*FILE)
             MONMSG     MSGID(CPF0000) EXEC(CHGVAR VAR(&OBRATEXIST) +
                          VALUE('1'))
    /* If log file doesn't exists, inform user and leave aplication */
             IF         COND(&LOGFIEXIST) THEN(DO)
               SNDPGMMSG  MSG('Aplication logfile doees not exist or +
                        can not be locaded. Unable to continue.')
               GOTO KONEC
             ENDDO
           /* If STAVY doesn't exists, log this and leave aplication */
             IF         COND(&STAVYEXIST) THEN(DO)
               CHGVAR     VAR(&LOGMSG) VALUE('File STAVYP0 can not be +
                          found')
               CALL       PGM(LOG0010CB) PARM(&LOGMSG)
               GOTO       CMDLBL(KONEC)
             ENDDO
          /* If OBRATY doesn't exists, log this and leave aplication */
             IF         COND(&OBRATEXIST) THEN(DO)
               CHGVAR    VAR(&LOGMSG) VALUE('File OBRATYP0 can not be +
                          found')
               CALL       PGM(LOG0010CB) PARM(&LOGMSG)
               GOTO       CMDLBL(KONEC)
             ENDDO
          /* Get number of records in OBRATY, if 0, log and exit */
             RTVMBRD    FILE(OBRATYP0) NBRCURRCD(&OBRATYREC)
             IF (&obratyrec *EQ 0) then(do)
               chgvar &logmsg 'No records in OBRATYP0.'
               CALL       PGM(LOG0010CB) PARM(&LOGMSG)
               GOTO KONEC
             ENDDO
          /* All files found, start program to operata data */
             CHGVAR &LOGMSG 'All files found, calling data op pgm'
             CALL       PGM(LOG0010CB) PARM(&LOGMSG)
             CALL       PGM(STAOBR0CP)
KONEC:
ENDPGM
