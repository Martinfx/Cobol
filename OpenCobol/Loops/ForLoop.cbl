      ******************************************************************
      * Author: Maxfx                                                  *
      * Date: 27/8/2017                                                *
      * Program demonstration for loop in cobol program.               *
      * Revision: Maxfx 18/2/2018                                      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FOR-LOOP.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 W-I PIC 999 VALUE 0.
       01 W-J PIC 999 VALUE 0.
       01 W-K PIC 999 VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM FOR-UNTIL-LOOP.
           PERFORM FOR-VAIRING-LOOP.
           GOBACK.

           FOR-UNTIL-LOOP SECTION.

           PERFORM UNTIL W-I > 20
             MOVE W-I TO W-J
             ADD 1 TO W-I

             PERFORM UNTIL W-J > 20
               COMPUTE W-K = W-J * W-I
               DISPLAY "UNTIL: " W-I  " W-K: " W-K " = " W-J " * " W-I
               ADD 1 TO W-J

             END-PERFORM
           END-PERFORM.


           FOR-VAIRING-LOOP SECTION.

           ADD 0 TO W-I
           ADD 0 TO W-J
           ADD 0 TO W-K

           PERFORM VARYING W-I FROM 1 BY 1 UNTIL W-I > 20
             MOVE W-I TO W-J
             ADD 1 TO W-I

             PERFORM VARYING W-J FROM 1 BY 1 UNTIL W-J > 20
               COMPUTE W-K = W-J * W-I
               DISPLAY "VARYING: " W-I  " W-K: " W-K " = " W-J " * " W-I
               ADD 1 TO W-J
             END-PERFORM

           END-PERFORM.
