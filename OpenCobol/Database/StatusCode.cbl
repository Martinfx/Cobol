       IDENTIFICATION DIVISION.
       PROGRAM-ID. STATUS-CODE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01  STATUS-CODE         pic x(2) value spaces.
               88  SUCCESS                    value '00'.
               88  SUCCESS_DUPLICATE          value '02'.
               88  SUCCESS_INCOMPLETE         value '04'.
               88  SUCCESS_OPTIONAL           value '05'.
               88  SUCCESS_NO_UNIT            value '07'.
               88  END_OF_FILE                value '10'.
               88  OUT_OF_KEY_RANGE           value '14'.
               88  KEY_INVALID                value '21'.
               88  KEY_EXISTS                 value '22'.
               88  KEY_NOT_EXISTS             value '23'.
               88  PERMANENT_ERROR            value '30'.
               88  INCONSISTENT_FILENAME      value '31'.
               88  BOUNDARY_VIOLATION         value '34'.
               88  NOT_EXISTS                 value '35'.
               88  PERMISSION_DENIED          value '37'.
               88  CLOSED_WITH_LOCK           value '38'.
               88  CONFLICT_ATTRIBUTE         value '39'.
               88  ALREADY_OPEN               value '41'.
               88  NOT_OPEN                   value '42'.
               88  READ_NOT_DONE              value '43'.
               88  RECORD_OVERFLOW            value '44'.
               88  READ_ERROR                 value '46'.
               88  INPUT_DENIED               value '47'.
               88  OUTPUT_DENIED              value '48'.
               88  I_O_DENIED                 value '49'.
               88  RECORD_LOCKED              value '51'.
               88  END_OF_PAGE                value '52'.
               88  I_O_LINAGE                 value '57'.
               88  FILE_SHARING               value '61'.
               88  NOT_AVAILABLE              value '91'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Hello world"
           GOBACK.
