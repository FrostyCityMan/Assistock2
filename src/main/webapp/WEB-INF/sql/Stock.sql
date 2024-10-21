--------------------------------------------------------
--  DDL for Table Stock_value
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Stock_value"
(
	"Code(Stock)"       VARCHAR2(255 BYTE) PRIMARY KEY,
	"Name(Stock)"       VARCHAR2(255 BYTE),
	"Past"              DATE,
	"Value(Stock_Past)" BINARY_DOUBLE,
	"Now"               DATE,
	"Value(Stock_Now)"  BINARY_DOUBLE
);
--------------------------------------------------------
--  DDL for Table Stock
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Stock"
(
	"Code(Stock)"  VARCHAR2(255 BYTE) PRIMARY KEY,
	"Name(Stock)"  VARCHAR2(255 BYTE),
	"Class(Item)"  VARCHAR2(255 BYTE),
	"Class(Stock)" VARCHAR2(255 BYTE)
);
--------------------------------------------------------
--  DDL for Table Group(Stock)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Group(Stock)"
(
	"Code(Group_stock)" VARCHAR2(255 BYTE) PRIMARY KEY,
	"Code(Stock)"       VARCHAR2(255 BYTE),
	"Theme(Stock)"      VARCHAR2(255 BYTE)
);
--------------------------------------------------------
--  DDL for Table Theme(Stock)
--------------------------------------------------------

CREATE TABLE "SYSTEM"."Theme(Stock)"
(
	"Code(Theme_Stock)" VARCHAR2(255 BYTE) PRIMARY KEY,
	"Theme(Stock)"      VARCHAR2(255 BYTE)
);
