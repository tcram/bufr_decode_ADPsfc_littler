      FUNCTION LMSG(SEC0)

C$$$  SUBPROGRAM DOCUMENTATION BLOCK
C
C SUBPROGRAM:    LMSG
C   PRGMMR: WOOLLEN          ORG: NP20       DATE: 1994-01-06
C
C ABSTRACT: GIVEN A CHARACTER STRING CONTAINING SECTION ZERO FROM A
C   BUFR MESSAGE, THIS FUNCTION DETERMINES A COUNT OF MACHINE WORDS
C   (I.E. INTEGER ARRAY MEMBERS) THAT WILL HOLD THE ENTIRE MESSAGE.
C   NOTE THAT THIS COUNT MAY BE GREATER THAN THE MINIMUM NUMBER
C   OF WORDS REQUIRED TO HOLD THE MESSAGE.
C
C PROGRAM HISTORY LOG:
C 1994-01-06  J. WOOLLEN -- ORIGINAL AUTHOR
C 2003-11-04  S. BENDER  -- ADDED REMARKS/BUFRLIB ROUTINE
C                           INTERDEPENDENCIES
C 2003-11-04  D. KEYSER  -- UNIFIED/PORTABLE FOR WRF; ADDED
C                           DOCUMENTATION (INCLUDING HISTORY)
C 2004-08-18  J. ATOR    -- IMPROVED DOCUMENTATION
C 2005-11-29  J. ATOR    -- USE NMWRD
C
C USAGE:    LMSG (SEC0)
C   INPUT ARGUMENT LIST:
C     SEC0     - CHARACTER*8: PACKED BUFR MESSAGE SECTION ZERO
C
C   OUTPUT ARGUMENT LIST:
C     LMSG     - INTEGER: BUFR MESSAGE LENGTH (IN MACHINE WORDS)
C
C REMARKS:
C    THIS ROUTINE CALLS:        NMWRD
C    THIS ROUTINE IS CALLED BY: RDMSGB   RDMSGW   READERME
C                               Also called by application programs.
C
C ATTRIBUTES:
C   LANGUAGE: FORTRAN 77
C   MACHINE:  PORTABLE TO ALL PLATFORMS
C
C$$$

      CHARACTER*8 SEC0,CSEC0
      DIMENSION   MSEC0(2)

      EQUIVALENCE(MSEC0,CSEC0)

C-----------------------------------------------------------------------
C-----------------------------------------------------------------------

      CSEC0 = SEC0
      LMSG = NMWRD(MSEC0)

C  EXIT
C  ----

      RETURN
      END
