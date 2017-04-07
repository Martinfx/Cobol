      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOP.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
           SELECT DATA-FILE ASSIGN TO 'database.dat'
           ORGANIZATION IS SEQUENTIAL
           ACCESS IS RANDOM
           FILE STATUS FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
           FD DATA-FILE.

           01 DETAILS.
              02 DETAILS-ID PIC 9(10).
              02 DETAILS-NAME.
                 03 DETAILS-SURNAME PIC X(8).
                 03 INITIALS        PIC XX.

       WORKING-STORAGE SECTION.
           77 FILE-STATUS PIC XX.



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN INPUT DATA-FILE.

           READ DATA-FILE
               AT END MOVE HIGH-VALUES TO DETAILS
      *         DISPLAY DETAILS
           END-READ

           PERFORM UNTIL DETAILS = HIGH-VALUES
               DISPLAY DETAILS-ID SPACE DETAILS-NAME

               READ DATA-FILE
                   AT END MOVE HIGH-VALUES TO DETAILS
               END-READ

      *         DISPLAY "DETAILS-ID: " DETAILS-ID
      *         DISPLAY "DETAILS-NAME: " DETAILS-NAME

           END-PERFORM

           CLOSE DATA-FILE.
           STOP RUN.
      *      DISPLAY "Hello world".

       END PROGRAM LOOP.
