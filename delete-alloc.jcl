//ALLOCDS  JOB CLASS=A,MSGCLASS=A,MSGLEVEL=(1,1)
//*****by Crni Mrki     ******************
//DELETE   EXEC PGM=IEFBR14
//RESLIB   DD  DSN=DLI.RESLIB,DISP=(MOD,DELETE,DELETE),
//             UNIT=2314,VOL=SER=SORT02
//***********************************************************************
//***********************************************************************
//DELETE   EXEC PGM=IEFBR14
//PGMLIB   DD  DSN=DLI.PGMLIB,DISP=(MOD,DELETE,DELETE),
//             UNIT=2314,VOL=SER=SORT03
//***********************************************************************
//DELETE   EXEC PGM=IEFBR14
//PROCLIB  DD  DSN=DLI.PROCLIB,DISP=(MOD,DELETE,DELETE),
//             UNIT=2314,VOL=SER=SORT04
//***********************************************************************
//DELETE   EXEC PGM=IEFBR14
//MACLIB   DD  DSN=DLI.MACLIB,DISP=(MOD,DELETE,DELETE),
//             UNIT=2314,VOL=SER=SORT02
//***********************************************************************
//DELETE   EXEC PGM=IEFBR14
//PSBLIB   DD  DSN=DLI.PSBLIB,DISP=(MOD,DELETE,DELETE),
//             UNIT=2314,VOL=SER=SORT03
//***********************************************************************
//DELETE   EXEC PGM=IEFBR14
//DBDLIB   DD  DSN=DLI.DBDLIB,DISP=(MOD,DELETE,DELETE),
//             UNIT=2314,VOL=SER=SORT04
//***********************************************************************
//***********************************************************************
//ALLOC    EXEC PGM=IEFBR14
//RESLIB   DD  DSN=DLI.RESLIB,DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(10,5,5)),
//             DCB=(LRECL=0,RECFM=U,BLKSIZE=13030),
//             UNIT=2314,VOL=SER=SORT02
//***********************************************************************
//ALLOC    EXEC PGM=IEFBR14
//PGMLIB   DD  DSN=DLI.PGMLIB,DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(10,5,5)),
//             DCB=(LRECL=0,RECFM=U,BLKSIZE=13030),
//             UNIT=2314,VOL=SER=SORT03
//***********************************************************************
//ALLOC    EXEC PGM=IEFBR14
//PROCLIB  DD  DSN=DLI.PROCLIB,DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(10,5,5)),
//             DCB=(LRECL=80,RECFM=F,BLKSIZE=80),
//             UNIT=2314,VOL=SER=SORT04
//***********************************************************************
//ALLOC    EXEC PGM=IEFBR14
//MACLIB   DD  DSN=DLI.MACLIB,DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(10,5,5)),
//             DCB=(LRECL=80,RECFM=FB,BLKSIZE=3120),
//             UNIT=2314,VOL=SER=SORT02
//***********************************************************************
//ALLOC    EXEC PGM=IEFBR14
//PSBLIB   DD  DSN=DLI.PSBLIB,DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(10,5,5)),
//             DCB=(LRECL=0,RECFM=U,BLKSIZE=13030),
//             UNIT=2314,VOL=SER=SORT03
//***********************************************************************
//ALLOC    EXEC PGM=IEFBR14
//DBDLIB   DD  DSN=DLI.DBDLIB,DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(10,5,5)),
//             DCB=(LRECL=0,RECFM=U,BLKSIZE=13030),
//             UNIT=2314,VOL=SER=SORT04
//
