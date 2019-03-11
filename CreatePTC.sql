/************************************************************/
/* Create the PTC Database                                  */
/* Thorin Schmidt                                           */
/* 3/11/2019                                                */
/************************************************************/
DROP DATABASE IF EXISTS PTC;



CREATE DATABASE PTC;

USE PTC;


CREATE TABLE District (
  district_id     TINYINT, 
  district_name   VARCHAR(16), 
  PRIMARY KEY(district_id));

INSERT INTO District VALUES (1, "St. Charles");
INSERT INTO District VALUES (2, "Orchard Farm");
INSERT INTO District VALUES (3, "Fort Zumwalt");
INSERT INTO District VALUES (4, "Francis Howell");
INSERT INTO District VALUES (5, "Lutheran");
INSERT INTO District VALUES (6, "Wentzville");
INSERT INTO District VALUES (7, "Christian");


CREATE TABLE School (
  school_id           TINYINT,
  school_name         VARCHAR(32),
  school_abbr         VARCHAR(3),
  school_district_id  TINYINT,
  PRIMARY KEY(school_id),
  FOREIGN KEY(school_district_id) REFERENCES District(district_id)
);

INSERT INTO School VALUES(1, "St. Charles High", "SCH", 1);
INSERT INTO School VALUES(2, "St. Charles West", "SCW", 1);
INSERT INTO School VALUES(3, "Orchard Farm", "OF", 2);
INSERT INTO School VALUES(4, "Fort Zumwalt North", "FZN", 3);
INSERT INTO School VALUES(5, "Fort Zumwalt South", "FZS", 3);
INSERT INTO School VALUES(6, "Fort Zumwalt East", "FZE", 3);
INSERT INTO School VALUES(7, "Fort Zumwalt West", "FZW", 3);





CREATE TABLE Staff (
  staff_id        TINYINT,
  staff_fname     VARCHAR(16),
  staff_lname     VARCHAR(20),
  staff_program   VARCHAR(4),
  staff_room      VARCHAR(10),
  /*staff_picture   LONGVARBINARY,*/
  staff_email     VARCHAR(32),
  staff_phone     VARCHAR(12),
  PRIMARY KEY(staff_id)
);

INSERT INTO Staff VALUES(1,"Thorin", "Schmidt", "CSD", "A107", 
                         "tschmidt@stcharlessd.org", "636-443-4987");
