CREATE DATABASE Vet_Clinic;
use Vet_Clinic;


CREATE TABLE client (
  firstname 		varchar(20) NOT NULL,
  lastname 			varchar(20) NOT NULL,
  phone 			varchar(15) NOT NULL,
  email				varchar(45) NOT NULL,
  PRIMARY KEY (phone)
  );
  CREATE TABLE pet (
  name 				varchar(20) NOT NULL,
  species 			varchar(20) NOT NULL,
  DOB				DATE NOT NULL,
  chippedINT 		INT NOT NULL,
  owner 			varchar(15) DEFAULT NULL,
  Id 				INT NOT NULL,
					PRIMARY KEY (Id),
					FOREIGN KEY (owner) references client(phone)
  );
  CREATE TABLE appointment (
  start 		DATETIME NOT NULL,
  room 			varchar(15) NOT NULL,
  petId 		INT NOT NULL,
  vetphone		VARCHAR(15),
  vetExt		INT NOT NULL,
				PRIMARY KEY (start),
                FOREIGN KEY (petId) references pet(Id)
);
CREATE TABLE employee (
  firstName 	VARCHAR (20) NOT NULL,
  lastName 		VARCHAR(20) NOT NULL,
  role 			VARCHAR(20) NOT NULL,
  phone			VARCHAR(15) NOT NULL,
  office		VARCHAR(10) NOT NULL,
  ext			INT NOT NULL,
  PRIMARY KEY (phone, ext)
);