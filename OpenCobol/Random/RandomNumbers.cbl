      ******************************************************************
      * Author: Maxfx
      * Date: 30.7.2017
      * Example of generating random numbers.
      * Revision: Maxfx 18/2/2018
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RANDOM-NUMBERS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 W-RESULT PIC 999.
           01 SEED     PIC 9V999999999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            PERFORM GET-SEED.
            PERFORM GENERATE-NUMBER.
            GOBACK.

           GET-SEED SECTION.
      **********************************************************************
      *    More informations:
      *    https://sourceforge.net/p/open-cobol/mailman/message/30917734/
      **********************************************************************
           MOVE FUNCTION RANDOM(FUNCTION SECONDS-PAST-MIDNIGHT) TO SEED.

           GENERATE-NUMBER SECTION.

            PERFORM 10 TIMES
      * Generate numbers from interval
              COMPUTE W-RESULT = (FUNCTION RANDOM * 100) + 1
              DISPLAY "Random number: " W-RESULT
            END-PERFORM.
