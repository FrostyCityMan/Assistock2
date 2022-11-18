--------------------------------------------------------
--  DDL for Table Continent
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Continent"
(	"Code(Continent)" VARCHAR2(255 BYTE) PRIMARY KEY ,
     "Continent" VARCHAR2(255 BYTE)
) ;

--------------------------------------------------------
--  DDL for Table Group(Material)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Group(Material)"
(	"Code(Group_Material)" VARCHAR2(255 BYTE) Primary Key ,
     "ISO" VARCHAR2(255 BYTE),
     "Continent" VARCHAR2(255 BYTE)
);

--------------------------------------------------------
--  DDL for Table Class(Item)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Class(Item)"
(	"Code(Class_item)" VARCHAR2(255 BYTE) PRIMARY KEY ,
     "Class(Item)" VARCHAR2(255 BYTE)
) ;


--------------------------------------------------------
--  DDL for Table Detail(Item)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Detail(Item)"
(	"Code(Detail_item)" VARCHAR2(255 BYTE) Primary key,
     "Detail(Item)" VARCHAR2(255 BYTE)
) ;

--------------------------------------------------------
--  DDL for Table Name(Country)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Name(Country)"
(	"ISO" VARCHAR2(255 BYTE) PRIMARY KEY ,
     "Name(Country)" VARCHAR2(255 BYTE)
) ;


--------------------------------------------------------
--  DDL for Table Material
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Material"
(	"ISO" VARCHAR2(255 BYTE) Primary Key ,
     "Name(Country)" VARCHAR2(255 BYTE),
     "Name(Country_eng)" VARCHAR2(255 BYTE),
     "Continent" VARCHAR2(255 BYTE),
     "Class(Item)" VARCHAR2(255 BYTE),
     "Detail(Item)" VARCHAR2(255 BYTE),
     "Value(Material)" BINARY_DOUBLE
);
