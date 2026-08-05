-- =====================================
-- Create HazMat Database
-- =====================================

CREATE DATABASE HazMat_Risk_Analysis;

USE HazMat_Risk_Analysis;

-- =====================================
-- Create Incident Table
-- =====================================

CREATE TABLE incidents (
    incident_id INT PRIMARY KEY,
    incident_date DATE,
    location VARCHAR(50),
    material_type VARCHAR(50),
    incident_type VARCHAR(50),
    severity VARCHAR(20),
    root_cause VARCHAR(100),
    corrective_action VARCHAR(100),
    status VARCHAR(20)
);

-- =====================================
-- Insert Incident Data
-- =====================================

INSERT INTO incidents
(
incident_id,
incident_date,
location,
material_type,
incident_type,
severity,
root_cause,
corrective_action,
status
)

VALUES

(1, '2025-01-05', 'Warehouse A', 'Flammable Liquid', 'Spill', 'High', 'Improper Handling', 'Employee Training', 'Closed'),

(2, '2025-01-12', 'Warehouse B', 'Battery', 'Package Damage', 'Medium', 'Packaging Issue', 'Process Update', 'Closed'),
(3, '2025-01-20', 'Warehouse A', 'Chemical Cleaner', 'Labeling Error', 'Low', 'Procedure Gap', 'Label Review', 'Open'),

(4, '2025-02-03', 'Warehouse C', 'Paint', 'Storage Issue', 'Medium', 'Storage Practice', 'Storage Improvement', 'Closed'),

(5, '2025-02-15', 'Warehouse B', 'Flammable Liquid', 'Leak', 'High', 'Equipment Failure', 'Equipment Inspection', 'Open'),
(6,'2025-02-20','Warehouse C','Aerosol','Leak','Medium','Packaging Issue','Packaging Review','Closed'),
(7,'2025-03-02','Distribution Center','Battery','Damage','High','Improper Handling','Employee Training','Open'),
(8,'2025-03-05','Warehouse A','Paint','Storage Issue','Medium','Procedure Gap','SOP Update','Closed'),
(9,'2025-03-10','Warehouse B','Chemical Cleaner','Labeling Error','Low','Training Gap','Label Review','Closed'),
(10,'2025-03-15','Transportation Hub','Flammable Liquid','Spill','High','Equipment Failure','Equipment Inspection','Open'),

(11,'2025-03-20','Warehouse A','Battery','Package Damage','Medium','Packaging Issue','Process Improvement','Closed'),
(12,'2025-03-25','Warehouse C','Aerosol','Leak','Low','Procedure Gap','SOP Update','Closed'),
(13,'2025-04-01','Warehouse B','Paint','Storage Issue','Medium','Improper Handling','Training','Open'),
(14,'2025-04-06','Distribution Center','Flammable Liquid','Spill','High','Training Gap','Employee Training','Closed'),
(15,'2025-04-10','Transportation Hub','Chemical Cleaner','Labeling Error','Low','Procedure Gap','Label Review','Closed'),

(16,'2025-04-15','Warehouse A','Flammable Liquid','Leak','High','Equipment Failure','Inspection','Open'),
(17,'2025-04-20','Warehouse B','Battery','Damage','Medium','Packaging Issue','Packaging Review','Closed'),
(18,'2025-04-25','Warehouse C','Paint','Storage Issue','Low','Procedure Gap','SOP Update','Closed'),
(19,'2025-05-01','Distribution Center','Aerosol','Leak','Medium','Improper Handling','Training','Open'),
(20,'2025-05-05','Transportation Hub','Flammable Liquid','Spill','High','Equipment Failure','Repair','Closed'),

(21,'2025-05-10','Warehouse A','Chemical Cleaner','Labeling Error','Low','Training Gap','Training','Closed'),
(22,'2025-05-15','Warehouse B','Paint','Storage Issue','Medium','Procedure Gap','Audit','Open'),
(23,'2025-05-20','Warehouse C','Battery','Damage','High','Packaging Issue','Process Update','Closed'),
(24,'2025-05-25','Distribution Center','Aerosol','Leak','Medium','Improper Handling','Training','Closed'),
(25,'2025-06-01','Transportation Hub','Chemical Cleaner','Spill','High','Equipment Failure','Inspection','Open'),

(26,'2025-06-05','Warehouse A','Paint','Storage Issue','Medium','Procedure Gap','SOP Update','Closed'),
(27,'2025-06-10','Warehouse B','Flammable Liquid','Spill','High','Improper Handling','Training','Open'),
(28,'2025-06-15','Warehouse C','Battery','Damage','Low','Packaging Issue','Packaging Review','Closed'),
(29,'2025-06-20','Distribution Center','Chemical Cleaner','Labeling Error','Medium','Training Gap','Training','Closed'),
(30,'2025-06-25','Transportation Hub','Aerosol','Leak','High','Equipment Failure','Inspection','Open');
(31,'2025-07-01','Warehouse A','Flammable Liquid','Spill','High','Improper Handling','Employee Training','Closed'),
(32,'2025-07-05','Warehouse B','Battery','Damage','Medium','Packaging Issue','Process Update','Open'),
(33,'2025-07-10','Warehouse C','Chemical Cleaner','Labeling Error','Low','Training Gap','Label Review','Closed'),
(34,'2025-07-15','Distribution Center','Paint','Storage Issue','Medium','Procedure Gap','SOP Update','Closed'),
(35,'2025-07-20','Transportation Hub','Aerosol','Leak','High','Equipment Failure','Inspection','Open'),

(36,'2025-07-25','Warehouse A','Battery','Package Damage','Medium','Packaging Issue','Packaging Review','Closed'),
(37,'2025-08-01','Warehouse B','Flammable Liquid','Leak','High','Improper Handling','Training','Open'),
(38,'2025-08-05','Warehouse C','Paint','Storage Issue','Low','Procedure Gap','Audit','Closed'),
(39,'2025-08-10','Distribution Center','Chemical Cleaner','Spill','Medium','Training Gap','Employee Training','Closed'),
(40,'2025-08-15','Transportation Hub','Aerosol','Labeling Error','Low','Procedure Gap','Label Review','Closed'),

(41,'2025-08-20','Warehouse A','Chemical Cleaner','Leak','High','Equipment Failure','Equipment Inspection','Open'),
(42,'2025-08-25','Warehouse B','Battery','Damage','Medium','Packaging Issue','Process Improvement','Closed'),
(43,'2025-09-01','Warehouse C','Flammable Liquid','Spill','High','Improper Handling','Training','Open'),
(44,'2025-09-05','Distribution Center','Paint','Storage Issue','Medium','Procedure Gap','SOP Update','Closed'),
(45,'2025-09-10','Transportation Hub','Chemical Cleaner','Labeling Error','Low','Training Gap','Training','Closed'),

(46,'2025-09-15','Warehouse A','Aerosol','Leak','Medium','Packaging Issue','Packaging Review','Closed'),
(47,'2025-09-20','Warehouse B','Flammable Liquid','Spill','High','Equipment Failure','Inspection','Open'),
(48,'2025-09-25','Warehouse C','Battery','Damage','Medium','Improper Handling','Training','Closed'),
(49,'2025-10-01','Distribution Center','Chemical Cleaner','Labeling Error','Low','Procedure Gap','Label Review','Closed'),
(50,'2025-10-05','Transportation Hub','Paint','Storage Issue','Medium','Storage Practice','Audit','Open'),

(51,'2025-10-10','Warehouse A','Flammable Liquid','Spill','High','Training Gap','Employee Training','Closed'),
(52,'2025-10-15','Warehouse B','Aerosol','Leak','Medium','Packaging Issue','Process Update','Closed'),
(53,'2025-10-20','Warehouse C','Chemical Cleaner','Spill','High','Improper Handling','Training','Open'),
(54,'2025-10-25','Distribution Center','Battery','Damage','Low','Packaging Issue','Packaging Review','Closed'),
(55,'2025-11-01','Transportation Hub','Flammable Liquid','Leak','High','Equipment Failure','Inspection','Open'),

(56,'2025-11-05','Warehouse A','Paint','Storage Issue','Medium','Procedure Gap','SOP Update','Closed'),
(57,'2025-11-10','Warehouse B','Chemical Cleaner','Labeling Error','Low','Training Gap','Training','Closed'),
(58,'2025-11-15','Warehouse C','Aerosol','Leak','Medium','Packaging Issue','Packaging Review','Open'),
(59,'2025-11-20','Distribution Center','Flammable Liquid','Spill','High','Improper Handling','Training','Closed'),
(60,'2025-11-25','Transportation Hub','Battery','Damage','Medium','Packaging Issue','Process Update','Closed');
(61,'2025-12-01','Warehouse A','Flammable Liquid','Spill','High','Improper Handling','Employee Training','Closed'),
(62,'2025-12-03','Warehouse B','Battery','Damage','Medium','Packaging Issue','Process Update','Closed'),
(63,'2025-12-05','Warehouse C','Chemical Cleaner','Labeling Error','Low','Training Gap','Label Review','Closed'),
(64,'2025-12-07','Distribution Center','Paint','Storage Issue','Medium','Procedure Gap','SOP Update','Open'),
(65,'2025-12-10','Transportation Hub','Aerosol','Leak','High','Equipment Failure','Inspection','Open'),

(66,'2025-12-12','Warehouse A','Battery','Damage','Medium','Packaging Issue','Packaging Review','Closed'),
(67,'2025-12-15','Warehouse B','Flammable Liquid','Leak','High','Improper Handling','Training','Open'),
(68,'2025-12-18','Warehouse C','Paint','Storage Issue','Low','Procedure Gap','Audit','Closed'),
(69,'2025-12-20','Distribution Center','Chemical Cleaner','Spill','Medium','Training Gap','Training','Closed'),
(70,'2025-12-22','Transportation Hub','Aerosol','Labeling Error','Low','Procedure Gap','Label Review','Closed'),

(71,'2025-12-24','Warehouse A','Chemical Cleaner','Leak','High','Equipment Failure','Inspection','Open'),
(72,'2025-12-26','Warehouse B','Battery','Damage','Medium','Packaging Issue','Process Improvement','Closed'),
(73,'2025-12-28','Warehouse C','Flammable Liquid','Spill','High','Improper Handling','Training','Open'),
(74,'2025-12-29','Distribution Center','Paint','Storage Issue','Medium','Procedure Gap','SOP Update','Closed'),
(75,'2025-12-30','Transportation Hub','Chemical Cleaner','Labeling Error','Low','Training Gap','Training','Closed'),

(76,'2025-01-08','Warehouse A','Aerosol','Leak','Medium','Packaging Issue','Packaging Review','Closed'),
(77,'2025-02-12','Warehouse B','Flammable Liquid','Spill','High','Equipment Failure','Inspection','Open'),
(78,'2025-03-18','Warehouse C','Battery','Damage','Medium','Improper Handling','Training','Closed'),
(79,'2025-04-22','Distribution Center','Chemical Cleaner','Labeling Error','Low','Procedure Gap','Label Review','Closed'),
(80,'2025-05-28','Transportation Hub','Paint','Storage Issue','Medium','Storage Practice','Audit','Open'),

(81,'2025-06-03','Warehouse A','Flammable Liquid','Spill','High','Training Gap','Employee Training','Closed'),
(82,'2025-07-09','Warehouse B','Aerosol','Leak','Medium','Packaging Issue','Process Update','Closed'),
(83,'2025-08-14','Warehouse C','Chemical Cleaner','Spill','High','Improper Handling','Training','Open'),
(84,'2025-09-19','Distribution Center','Battery','Damage','Low','Packaging Issue','Packaging Review','Closed'),
(85,'2025-10-24','Transportation Hub','Flammable Liquid','Leak','High','Equipment Failure','Inspection','Open'),

(86,'2025-11-02','Warehouse A','Paint','Storage Issue','Medium','Procedure Gap','SOP Update','Closed'),
(87,'2025-11-06','Warehouse B','Chemical Cleaner','Labeling Error','Low','Training Gap','Training','Closed'),
(88,'2025-11-11','Warehouse C','Aerosol','Leak','Medium','Packaging Issue','Packaging Review','Open'),
(89,'2025-11-16','Distribution Center','Flammable Liquid','Spill','High','Improper Handling','Training','Closed'),
(90,'2025-11-21','Transportation Hub','Battery','Damage','Medium','Packaging Issue','Process Update','Closed'),

(91,'2025-12-02','Warehouse A','Chemical Cleaner','Spill','High','Equipment Failure','Inspection','Open'),
(92,'2025-12-06','Warehouse B','Paint','Storage Issue','Medium','Procedure Gap','SOP Update','Closed'),
(93,'2025-12-11','Warehouse C','Flammable Liquid','Leak','High','Improper Handling','Training','Open'),
(94,'2025-12-16','Distribution Center','Aerosol','Labeling Error','Low','Training Gap','Label Review','Closed'),
(95,'2025-12-20','Transportation Hub','Chemical Cleaner','Spill','Medium','Packaging Issue','Process Improvement','Closed'),

(96,'2025-12-23','Warehouse A','Battery','Damage','Medium','Packaging Issue','Packaging Review','Closed'),
(97,'2025-12-25','Warehouse B','Flammable Liquid','Spill','High','Improper Handling','Training','Open'),
(98,'2025-12-27','Warehouse C','Paint','Storage Issue','Low','Procedure Gap','Audit','Closed'),
(99,'2025-12-29','Distribution Center','Chemical Cleaner','Leak','Medium','Equipment Failure','Inspection','Closed'),
(100,'2025-12-31','Transportation Hub','Aerosol','Labeling Error','Low','Training Gap','Training','Closed');