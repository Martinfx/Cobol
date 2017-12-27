      ******************************************************************
      * Author: Maxfx
      * Date: 12/5/2016
      * Revision: Maxfx 30/8/2017
      * Example: Cobol switch
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVALUATE-VERB.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUM01 PIC 9(3) VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE 3 TO NUM01.

           EVALUATE TRUE
             WHEN NUM01 > 2
               DISPLAY "NUMBER01 GREATER THAN 2"
             WHEN NUM01 < 0
               DISPLAY "NUMBER01 LESS THAN 0"
             WHEN OTHER
               DISPLAY "INVALID VALUE OF NUMBER01"
           END-EVALUATE.

           GOBACK.
