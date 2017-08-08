      ******************************************************************
      * Author: Maxfx
      * Date: 30.7.2017
      * Example of generating random numbers.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RANDOM-NUMBERS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 W-NUM PIC 9(3).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            PERFORM GENERATE-NUMBER.
            GOBACK.

            GENERATE-NUMBER SECTION.

            PERFORM 10 TIMES
      * Generate numbers from interval
              COMPUTE W-NUM = (FUNCTION RANDOM * 100) + 1
              DISPLAY "Random number: " W-NUM
            END-PERFORM.
