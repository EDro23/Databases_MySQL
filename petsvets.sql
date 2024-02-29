CREATE DATABASE Petsvets;
USE Petsvets;

CREATE TABLE `Procedure` (
procCode 					INT,
Fee 						DECIMAL(8,2),
description 				VARCHAR (255),
CONSTRAINT 					PRIMARY KEY (ProcCode)
);

CREATE TABLE `Account` (
id 							INT,
client 						VARCHAR(15),
status 						INT,
balance 					DECIMAL (8,2),
dueDate 					DATE,
lastReminder 				DATE,
							CONSTRAINT PRIMARY KEY (id),
							CONSTRAINT account_client_pk FOREIGN KEY (client) references client
);

CREATE TABLE `Invoice` (
id 							INT,
account						INT,
procTotal					DECIMAL (8,2),
taxRate						DECIMAL (5,2),
balanceDue					DECIMAL (8,2),
invoiceDate					DATE,
							CONSTRAINT PRIMARY KEY (id),
                            CONSTRAINT inv_acc_fk FOREIGN KEY (account) references account (id)
);

CREATE TABLE `ProcedurePet` (
id 							INT,
procId 						INT,
petId 						INT,
invoiceId 					INT,
appointmentTime 			DATE,
							CONSTRAINT PRIMARY KEY (id),
							CONSTRAINT proc_fk FOREIGN KEY (petId) references pet (id),
							CONSTRAINT inv_fk FOREIGN KEY (invoiceId) references invoiceId
);







