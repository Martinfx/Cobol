      ******************************************************************
      * Author: Maxfx
      * Date: 12/4/2016
      * Revision: Maxfx 31/08/2017
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPEN-FILE-SEQUENTIAL.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       SELECT DATA-FILE ASSIGN TO "../data.dat"
       ORGANIZATION IS SEQUENTIAL
       ACCESS IS SEQUENTIAL
       FILE STATUS FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
           FD DATA-FILE.

           01 DETAILS.
             02 DET-ID     PIC X(5).
             02 DET-STR.
               03 DET-TIME   PIC X(5).
      *       02 DETAILS-EMPTY2 PIC X.
               03 DET-NUM    PIC X(6).

       WORKING-STORAGE SECTION.

           77 FILE-STATUS PIC XX.
           77 EOF PIC X.
             88 EOF-T value "Y".
             88 EOF-F value "N".

       PROCEDURE DIVISION.
            OPEN INPUT DATA-FILE.

           IF FILE-STATUS NOT = "00"
             DISPLAY "Error opening the DB file, program will exit."
             GOBACK
           END-IF.


           READ DATA-FILE
             AT END
               SET EOF-T TO TRUE
             NOT AT END
               SET EOF-F TO TRUE
               PERFORM DISPLAY-DET-S THROUGH DISPLAY-DET-E
           END-READ

           PERFORM UNTIL EOF-T
             READ DATA-FILE NEXT
               AT END
                 SET EOF-T TO TRUE
               NOT AT END
                 PERFORM DISPLAY-DET-S THROUGH DISPLAY-DET-E
             END-READ
           END-PERFORM

           CLOSE DATA-FILE.
           GOBACK.

           DISPAY-DET SECTION.
           DISPLAY-DET-S.

           DISPLAY "ID: " DET-ID " STR: " DET-TIME " DET-NUM: " DET-NUM.
      *       DISPLAY "DETAILS-NAME: " DETAILS-TIME.
      *       DISPLAY "DETAILS-NUM: " DETAILS-NUM.

           DISPLAY-DET-E.
               EXIT.

       END-PROGRAM SECTION.
           CLOSE DATA-FILE.
           GOBACK.
