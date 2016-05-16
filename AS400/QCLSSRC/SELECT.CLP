PGM /* BEGIN PROGRAM */                                                         
                                                                                
/* OBJECT NAME ( NAME PROGRAM ) */                                              
DCL &OBJNAM *CHAR 10 'CYCLE'                                                    
                                                                                
/* OBJECT TYPE PROGRAM */                                                       
DCL &TYPE   *CHAR 10 '*PGM'                                                     
                                                                                
/* THIS PROGRAM FIND PROGRAM CYCLE, PRINT "DISPLAY PROGRAM INFORMATION" */      
/* IF THIS PROGRAM NOT FIND CYCLE PROGRAM AND BAD TYPE, PRINT "BAD TYPE" */     
SELECT                                                                          
    WHEN COND(&TYPE *EQ *CMD) THEN(DO)                                          
         DSPCMD &OBJNAM                                                         
    ENDDO                                                                       
                                                                                
    WHEN COND(&TYPE *EQ *PGM) THEN(DO)                                          
         DSPPGM &OBJNAM                                                         
    ENDDO                                                                       
         OTHERWISE CMD(SNDMSG MSG('BAD TYPE') TOUSR(*REQUESTER))                
ENDSELECT                                                                       
                                                                                
ENDPGM /* END PROGRAM */                                                        
