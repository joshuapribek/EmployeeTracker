DROP DATABASE IF EXISTS EmployeeTracker_db;
CREATE DATABASE EmployeeTracker_db;
USE EmployeeTracker_db;

CREATE TABLE employee (
id integer auto_increment not null,
first_name varchar(30),
last_name varchar(30),
role_id integer,
primary key (id)
);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("John", "Pain", 3);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Alex", "Smith", 4);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Justine", "Orange", 5);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Blue", "White", 6);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("White", "Blue", 7);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("John", "Green", 8);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Josh", "Allen", 9);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("James", "Washington", 10);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Chase", "Claypool", 11);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Stefon", "Diggs", 12);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Anthony", "McFarland", 13);

CREATE TABLE department (
id integer auto_increment not null,
name varchar(30),
primary key (id)
);

INSERT INTO department (name)
VALUES ("Finance");

INSERT INTO department (name)
VALUES ("HR");

INSERT INTO department (name)
VALUES ("IT");

INSERT INTO department (name)
VALUES ("Legal");

INSERT INTO department (name)
VALUES ("Operations");

INSERT INTO department (name)
VALUES ("Executive");

CREATE TABLE role (
id integer auto_increment not null,
title varchar(30),
salary decimal (10,2),
department_id integer,
primary key (id)
);

INSERT INTO role (title, salary, department_id)
VALUES ("CFO", 90000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 50000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("HR", 60000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("CTO", 110000, 5);

INSERT INTO role (title, salary, department_id)
VALUES ("Director of IT", 80000, 5);

INSERT INTO role (title, salary, department_id)
VALUES ("IT Technician", 40000, 5);

INSERT INTO role (title, salary, department_id)
VALUES ("COO", 120000, 7);

INSERT INTO role (title, salary, department_id)
VALUES ("Operations Specialist", 40000, 7);

INSERT INTO role (title, salary, department_id)
VALUES ("Production Manager", 70000, 8);

INSERT INTO role (title, salary, department_id)
VALUES ("CEO", 1000000, 9);

select * from department;

select * from role;

select * from employee;

SELECT e.first_name, e.last_name, r.title, r.salary, d.name FROM employee e
INNER JOIN role r on e.role_id = r.id
INNER JOIN department d on r.department_id = d.id
ORDER BY d.name;