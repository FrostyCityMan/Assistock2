--------------------------------------------------------
--  DDL for Table Crawling(Cashe)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Crawling(Cache)"
(	"Name(News)" VARCHAR2(255 BYTE),
     "URL(Cache)" VARCHAR2(255 BYTE) Primary Key ,
     "Date(Cache)" DATE,
     "Head(Cache)" VARCHAR2(255 BYTE),
     "Text(Cache)" CLOB
) ;

--------------------------------------------------------
--  DDL for Table Crawling(Past)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Crawling(Past)"
(	 "Name(News)" VARCHAR2(255 BYTE),
     "URL(Past)" VARCHAR2(255 BYTE) Primary Key,
     "Date(Past)" DATE,
     "Head(Past)" VARCHAR2(255 BYTE),
     "Largest1(Past)" VARCHAR2(255 BYTE),
     "Largest2(Past)" VARCHAR2(255 BYTE),
     "Largest3(Past)" VARCHAR2(255 BYTE),
     "Largest4(Past)" VARCHAR2(255 BYTE),
     "Largest5(Past)" VARCHAR2(255 BYTE),
     "Entire(Past)" CLOB
) ;

--------------------------------------------------------
--  DDL for Table Crawling(Weekly)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Crawling(Weekly)"
(	 "Startdate" DATE Primary Key ,
     "Enddate" DATE,
     "Head(Weekly)" VARCHAR2(255 BYTE),
     "Largest1(Weekly)" VARCHAR2(255 BYTE),
     "Largest2(Weekly)" VARCHAR2(255 BYTE),
     "Largest3(Weekly)" VARCHAR2(255 BYTE),
     "Largest4(Weekly)" VARCHAR2(255 BYTE),
     "Largest5(Weekly)" VARCHAR2(255 BYTE),
     "Entire(Weekly)" CLOB
)  ;

--------------------------------------------------------
--  DDL for Table Crwaling(Now)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Crwaling(Now)"
(	 "Name(News)" VARCHAR2(255 BYTE),
     "URL(Now)" VARCHAR2(255 BYTE) PRIMARY KEY ,
     "Date(Now)" DATE,
     "Head(Now)" VARCHAR2(255 BYTE),
     "Largest1(Now)" VARCHAR2(255 BYTE),
     "Largest2(Now)" VARCHAR2(255 BYTE),
     "Largest3(Now)" VARCHAR2(255 BYTE),
     "Largest4(Now)" VARCHAR2(255 BYTE),
     "Largest5(Now)" VARCHAR2(255 BYTE),
     "Entire(Now)" CLOB
);

--------------------------------------------------------
--  DDL for Table News
--------------------------------------------------------

CREATE TABLE "SYSTEM"."News"
(	"Code(News)" VARCHAR2(255 BYTE) Primary Key ,
     "Name(News)" VARCHAR2(255 BYTE)
)  ;
