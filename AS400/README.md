# AS/400

Source codes under this folder are for IBM i (commonly known as AS/400) only.
The COBOL programs on AS/400 doesn't differ from other implementations (z/OS COBOL, OpenCOBOL etc.), but the CL and DDS sources are AS/400 specific.

## Using the source codes

In order to use source codes from here, they have to be uploaded to AS/400 and then compiled to programs.

### Creating a source file

The source codes on AS/400 are stored in a source file and its' members. The object is of type *FILE with PF-SRC attribute. Normal *FILE PF-DTA can't be used to store and compile source codes.
To create a source file, use the following command:

```cl
CRTSRCPF FILE(${LIB}/${SRCF_NAME})
```

Where ${LIB} is a library where the source file will be created and ${SRCF_NAME} is a name of the source file.
The name can be anything, but common practice is to use the following names:

- `QCLSRC` for CL sources
- `QCBLSRC` for COBOL sources
- `QDDSSRC` for DDS sources
- `QRPGSRC` for RPG sources
- `QSQLSRC` for SQL sources
- `QTXTSRC` for other sources, like FTP transfer procedure

### Creating a source file member

As said above, the source code is stored in members of source files. You can already upload source code to the source file, but such member wouldn't have assigned source type and has to be updated in order to be able to compile it. When a member is created before with the correct type, only its' contents are updated on upload.
To create source file mebmer:

```cl
STRSEU *SRCFILE(${LIB}/${SRCF_NAME}) SRCMBR(${MBR_NAME}) TYPE(${TYPE}) [TEXT(${DESC}])
```

Where ${MBR_NAME} is the name of the program, ${TYPE} is the language of the program (CL, CBL, RPG...) and ${DESC} is the text description of the created member.

### Uploading a source code

To upload source code files, FTP can be used:

```ftp
ftp ${AS400}
//login
ascii
QUOTE SITE NAMEFMT 0 //so AS/400 paths can be used
PUT ${FILE} ${LIB}/${SRCF_NAME}.${MBR_NAME} (REPLACE
```

Where ${FILE} is file name or path to be uploaded. `(REPLACE` is used to overwrite target member contents, necessary if the member has been created before.

Now the source code is on AS/400 and can be compiled!

### Downloading a source code

Same FTP approach can be used to get the source codes from AS/400 to your file system.

```ftp
ftp ${AS400}
//login
ascii
QUOTE SITE NAMEFMT 0 //so AS/400 paths can be used
GET ${LIB}/${SRCF_NAME}.${MBR_NAME} ${FILE}
```