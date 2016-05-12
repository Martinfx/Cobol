      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. CONDITION_NAME_CONDITION.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      * Set values in interval <30, 100>
      * Set values in interval <000, 40>
           01 M_NUMBER PIC 9(3).
           88 M_TRUE  VALUES ARE 30 THRU 100.
           88 M_FALSE VALUES ARE 000 THRU 40.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 50 TO M_NUMBER.

           IF M_TRUE
           DISPLAY 'Passed with ' M_NUMBER ' marks'.

           IF M_FALSE
           DISPLAY 'FAILED with ' M_NUMBER ' marks'.



       END PROGRAM CONDITION_NAME_CONDITION.
