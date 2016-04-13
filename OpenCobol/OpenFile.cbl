      ******************************************************************
      * Author: Martin Filla
      * Date: 12/4/2016
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPENFILE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT MY-FILE ASSIGN TO 'data.txt'
       ORGANIZATION IS LINE SEQUENTIAL
       FILE STATUS STATUS-MY-FILE.

       DATA DIVISION.
       FILE SECTION.
           FD MY-FILE.
           01 STATUS-MY-FILE PIC XX.

           01 MY-DATA-FILE.
              05 MY-DATA-ID    PIC X(5).
              05 MY-DATA-NAME  PIC X(10).
              05 MY-DATA-TIME  PIC X(10).

       WORKING-STORAGE SECTION.
           01 MY-DATA-STRUCT.
              05 DATA-ID   PIC X(5).
              05 DATA-NAME PIC X(10).
              05 DATA-TIME PIC X(10).

           01 EOF PIC A(1).
           01 ERROR-RESULT.
              05 ERROR-LEVEL PIC XX.
              05 ERROR-MSG   PIC X(50).

      *-----------------------
       PROCEDURE DIVISION.
           OPEN I-O MY-FILE.
           IF STATUS-MY-FILE NOT = '00'
              MOVE STATUS-MY-FILE TO ERROR-LEVEL
              MOVE "ERROR OPENING FILE : " TO ERROR-MSG
              PERFORM ERROR-MESSAGE
              PERFORM END-PROGRAM
           END-IF.

       MY-READ-FILE SECTION.

           PERFORM UNTIL EOF = 'Y'
               READ MY-FILE INTO MY-DATA-STRUCT

                    AT END MOVE 'Y' TO EOF
                    NOT AT END DISPLAY MY-DATA-STRUCT

                END-READ
           END-PERFORM.
           CLOSE MY-FILE.

       ERROR-MESSAGE SECTION.
           DISPLAY ERROR-MSG " " ERROR-LEVEL.

       END-PROGRAM SECTION.
           CLOSE MY-FILE.

       END PROGRAM OPENFILE.
