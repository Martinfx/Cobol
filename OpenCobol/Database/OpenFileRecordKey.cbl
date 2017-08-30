      ******************************************************************
      * Author: Maxfx
      * Date: 12/4/2016
      * Revision: Maxfx 31/08/2017
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPEN-FILE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT DATA-FILE ASSIGN TO "../data.dat"
           ORGANIZATION IS SEQUENTIAL
           ACCESS IS SEQUENTIAL
           FILE STATUS FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
           FD DATA-FILE.
           01 FILE-STATUS PIC XX.

           01 MY-DATA-FILE.
             05 MY-DATA-ID    PIC X(5).
             05 MY-DATA-NAME  PIC X(10).
             05 MY-DATA-TIME  PIC X(10).

       WORKING-STORAGE SECTION.
           01 MY-DATA-STRUCT.
             05 DATA-ID   PIC X(5).
             05 DATA-NAME PIC X(10).
             05 DATA-TIME PIC X(10).

      * End of line file.
           01 EOF PIC A(1).
           01 ERROR-RESULT.
             05 ERROR-LEVEL PIC XX.
             05 ERROR-MSG   PIC X(50).

       PROCEDURE DIVISION.
      * Open file
           OPEN I-O DATA-FILE.

      * Check status code for opening file,
      * if is not status code 00, print error message and close file.
           IF FILE-STATUS NOT = '00'
               MOVE FILE-STATUS TO ERROR-LEVEL
               MOVE "ERROR OPENING FILE : " TO ERROR-MSG
                   PERFORM ERROR-MESSAGE
                   PERFORM END-PROGRAM
           END-IF.

       READ-FILE SECTION.

           PERFORM UNTIL EOF = 'Y'
               READ DATA-FILE INTO MY-DATA-STRUCT

                    AT END MOVE 'Y' TO EOF
                    NOT AT END DISPLAY MY-DATA-STRUCT
               END-READ


           END-PERFORM.
           CLOSE DATA-FILE.

       ERROR-MESSAGE SECTION.
           DISPLAY ERROR-MSG " " ERROR-LEVEL.

       END-PROGRAM SECTION.
           CLOSE DATA-FILE.
