      ******************************************************************
      * Author: Maxfx
      * Revision: Maxfx 31/08/2017
      * Revision: Maxfx 6/10/2017
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. WORK-WITH-POINTER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WORK-AREA.
             03 AREA-A PIC X(4) VALUE 'AAAA'.
             03 AREA-B PIC X(4) VALUE 'BBBB'.
             03 AREA-C PIC X(4) VALUE 'CCCC'.
             03 AREA-D PIC X(4) VALUE 'DDDF'.

           01 W-POINTER POINTER.

       LINKAGE SECTION.
           01 WORK-DATA.
             03 WORK-A PIC X(4).
             03 NEXT-WORK-DATA PIC X(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "W-POINTER: " W-POINTER

           SET W-POINTER TO ADDRESS OF WORK-AREA.
           SET ADDRESS OF WORK-DATA TO W-POINTER.

           DISPLAY "WORK-DATA: " WORK-DATA.
           DISPLAY "W-POINTER: " W-POINTER.
           DISPLAY "WORK-A: " WORK-A.
           DISPLAY "NEXT-WORK-DATA : " NEXT-WORK-DATA.

           GOBACK.
