--------------------------------------------------------
--  DDL for Table Member
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Member"
(	"Name(Register)" VARCHAR2(255 BYTE),
     "Email" VARCHAR2(255 BYTE) PRIMARY KEY ,
     "ID" VARCHAR2(255 BYTE),
     "PW" VARCHAR2(255 BYTE),
     "Class(Member)" VARCHAR2(255 BYTE),
     "Date(Sub)" DATE,
     "Name(Member)" VARCHAR2(255 BYTE),
     "Date(Join)" DATE,
     "Tel" VARCHAR2(255 BYTE)
);

--------------------------------------------------------
--  DDL for Table Register
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Register"
(	"Code(Register)" Int Primary Key ,
     "Name(Register)" VARCHAR2(255 BYTE)
) ;

