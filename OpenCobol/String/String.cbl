      ******************************************************************
      * Author: Maxfx                                                  *
      * Revision: 31/08/2017                                           *
      * Example for work with string                                   *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. WORK-WITH-STRING.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 W-COUNT     PIC 999.
           01 W-STRING    PIC X(10) VALUE "HOHOHOHOHO".
           01 W-IS-NUMBER PIC X(1)  VALUE "0".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM VARYING W-COUNT FROM 1 BY 1 UNTIL W-COUNT > 10
             DISPLAY W-STRING(W-COUNT:1)
           END-PERFORM

           GOBACK.
