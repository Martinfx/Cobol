      ******************************************************************
      * Author: Maxfx                                                  *
      * Revision: 31/08/2017                                           *
      * Example Hello World, first program in COBOL (OpenCOBOL)        *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      * The main procedure of the program
            DISPLAY "Hello world!"
            STOP RUN.

       END PROGRAM HELLO-WORLD.
