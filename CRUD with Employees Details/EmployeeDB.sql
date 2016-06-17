-- Database: "EmployeeDB"

-- DROP DATABASE "EmployeeDB";
drop table employes;
create table employes ( username varchar(20), password varchar(20), name varchar(20), roleId int, phone varchar(20), email varchar(50), depId int);
INSERT INTO employes VALUES ('Markandayan', 'login', 'Mark', 101, '8056972109', 'marklevy1518@gmail.com', 201);
INSERT INTO employes VALUES ('TestuserName', 'test', 'Test', 102, '9999999999', 'test@gmail.com', 1203);
INSERT INTO employes VALUES ('Testuser1', 'test1', 'Test1', 102, '9999999999', 'test@gmail.com', 1203);
INSERT INTO employes VALUES ('Testuser2', 'test2', 'Test2', 102, '9999999999', 'test@gmail.com', 1203);
INSERT INTO employes VALUES ('Testuser3', 'test3', 'Test3', 102, '9999999999', 'test@gmail.com', 1203);
select * from employes;

drop table roles;
create table roles ( roleId int primary key, rolename varchar(20));
INSERT INTO roles VALUES (101, 'Manger'); 
INSERT INTO roles VALUES (102, 'Employee');
select * from roles;

drop table services;
create table services (depid int primary key, depname varchar(20));
INSERT INTO services VALUES (1201, 'Developer'); 
INSERT INTO services VALUES (1202, 'Tester'); 
INSERT INTO services VALUES (1203, 'Sales Man');
INSERT INTO services VALUES (1204, 'Admin');
select * from services;

SELECT * FROM employes emp INNER JOIN roles rol ON (emp.roleid=rol.roleid) INNER JOIN services ser ON (emp.depid=ser.depid);