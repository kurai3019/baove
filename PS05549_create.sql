-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-05-03 03:30:42.99

-- tables
-- Table: bacsi
CREATE TABLE bacsi (
    mabs varchar(50) NOT NULL,
    hoten varchar(50) NOT NULL,
    diachi varchar(50) NOT NULL,
    CONSTRAINT mabs PRIMARY KEY (mabs)
);

-- Table: benhnhan
CREATE TABLE benhnhan (
    mabenhnhan varchar(50) NOT NULL,
    hoten varchar(50) NOT NULL,
    phai bigint NOT NULL,
    ngaysinh date NOT NULL,
    diachi varchar(50) NOT NULL,
    CONSTRAINT benhnhan_pk PRIMARY KEY (mabenhnhan)
);

-- Table: phieukhambenh
CREATE TABLE phieukhambenh (
    maphieu varchar(50) NOT NULL,
    mabenhnhan varchar(50) NOT NULL,
    hoten varchar(50) NOT NULL,
    bacsidieutri varchar(50) NOT NULL,
    chuandoan varchar(200) NOT NULL,
    chiphi int NOT NULL,
    CONSTRAINT phieukhambenh_pk PRIMARY KEY (maphieu)
);

-- foreign keys
-- Reference: phieukhambenh_bacsi (table: phieukhambenh)
ALTER TABLE phieukhambenh ADD CONSTRAINT phieukhambenh_bacsi FOREIGN KEY phieukhambenh_bacsi (bacsidieutri)
    REFERENCES bacsi (mabs);

-- Reference: phieukhambenh_benhnhan (table: phieukhambenh)
ALTER TABLE phieukhambenh ADD CONSTRAINT phieukhambenh_benhnhan FOREIGN KEY phieukhambenh_benhnhan (mabenhnhan)
    REFERENCES benhnhan (mabenhnhan);

-- End of file.

