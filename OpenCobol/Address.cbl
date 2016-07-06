       IDENTIFICATION DIVISION.
       PROGRAM-ID. WORK-OFFSET.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 WORK-AREA.
　           03 WK-A PIC X(4) VALUE 'AAAA'.
　           03 WK-B PIC X(4) VALUE 'BBBB'.
　           03 WK-C PIC X(4) VALUE 'CCCC'.
　           03 WK-D PIC X(4) VALUE 'DDDF'.
           01 WK-PTR POINTER.

       LINKAGE SECTION.
           01 WORK-DATA.
　           03 WORK-A PIC X(4).
　           03 NEXT-WORK-DATA PIC X(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
            DISPLAY "WK-PTR :   " WK-PTR
      *      DISPLAY "TBL-DATA : " TBL-DATA

            SET WK-PTR TO ADDRESS OF WORK-AREA.
            SET ADDRESS OF WORK-DATA TO WK-PTR.

            DISPLAY "WORK-DATA : " WORK-DATA.
            DISPLAY "WK-PTR :   " WK-PTR.
            DISPLAY "WORK-A : " WORK-A.
            DISPLAY "NEXT-WORK-DATA : " NEXT-WORK-DATA.

       END PROGRAM WORK-OFFSET.
