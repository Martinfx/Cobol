# Logging
This example shows basic COBOL program, that can be used for logging actions from other programs.
Log programs writes messages from other programs from LINKAGE SECTION into the LOGP0 physical file.
The logged message is enhanced with system date and job identification, which are extracted in CL program using system RTVJOBA API.
