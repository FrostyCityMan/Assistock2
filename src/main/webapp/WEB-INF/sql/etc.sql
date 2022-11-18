--------------------------------------------------------
--  DDL for Table Word
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Word"
(	"Code(Word)" VARCHAR2(20 BYTE) Primary Key,
     "Word" VARCHAR2(255 BYTE),
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
