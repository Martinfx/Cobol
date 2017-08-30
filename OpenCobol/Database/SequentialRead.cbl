      ******************************************************************
      * Author: Maxfx                                                  *
      * Revision: 28/8/2017 - Malanius                                 *
      * Program demonstration sequential reading database              *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEQUENTIAL-READ.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT DATA-FILE ASSIGN TO "../database.dat"
           ORGANIZATION IS SEQUENTIAL
           ACCESS IS SEQUENTIAL
           FILE STATUS FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
           FD DATA-FILE.
           01 DETAILS.
             02 DETAILS-ID PIC 9(7).
             02 DETAILS-NAME.
               03 DETAILS-SURNAME PIC X(8).
               03 INITIALS        PIC XX.
             02 DETAILS-BIRTHDAY  PIC X(8).
             02 SOME-CODE         PIC X(5).

       WORKING-STORAGE SECTION.
           77 FILE-STATUS PIC XX.
           77 EOF PIC X.
             88 EOF-T value "Y".
             88 EOF-F value "N".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN INPUT DATA-FILE.

           IF FILE-STATUS not = "00"
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
               DISPLAY DETAILS.
               DISPLAY "DETAILS-ID: " DETAILS-ID
               DISPLAY "DETAILS-NAME: " DETAILS-SURNAME.
               DISPLAY "DETAILS-BIRTHDAY: " DETAILS-BIRTHDAY.
           DISPLAY-DET-E.
               EXIT.
