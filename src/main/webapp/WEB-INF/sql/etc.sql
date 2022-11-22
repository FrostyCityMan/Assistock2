--------------------------------------------------------
--  DDL for Table Word
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Word"
(	"Code(Word)" VARCHAR2(20 BYTE) Primary Key,
     "Word" VARCHAR2(255 BYTE),
     "Score" BINARY_DOUBLE
)  ;

--------------------------------------------------------
--  DDL for Table Word(Material)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Word(Material)"
(	"Name(News)" VARCHAR2(255 BYTE),
     "Name(Country)" VARCHAR2(255 BYTE),
     "Class(Item)" VARCHAR2(255 BYTE),
     "URL(Now)" VARCHAR2(255 BYTE) PRIMARY KEY,
     "Date(Now)" DATE,
     "Head(Now)" VARCHAR2(255 BYTE),
     "Entire(Now)" CLOB,
     "Score" BINARY_DOUBLE
)  ;
--------------------------------------------------------
--  DDL for Table Word(Stock)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Word(Stock)"
(	"Name(News)" VARCHAR2(255 BYTE),
     "Name(Stock)" VARCHAR2(255 BYTE),
     "Class(Item)" VARCHAR2(255 BYTE),
     "URL(Now)" VARCHAR2(255 BYTE) PRIMARY KEY,
     "Date(Now)" DATE,
     "Head(Now)" VARCHAR2(255 BYTE),
     "Entire(Now)" CLOB,
     "Score" BINARY_DOUBLE
)  ;



--------------------------------------------------------
--  DDL for Table Sitemap
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Sitemap"
(	"Code(Sitemap)" VARCHAR2(255 BYTE) Primary Key,
     "URL(stiemap)" VARCHAR2(255 BYTE),
     "Class(Sitemap)" VARCHAR2(255 BYTE),
     "Board(Sitemap)" VARCHAR2(255 BYTE)
) ;

