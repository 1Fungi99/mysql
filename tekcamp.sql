-- Step 1
/*
innodb
    *No Tables*
students
    tekcamp01
sys
    sys_config
*/

-- Step 2
CREATE SCHEMA "tc1-justin-cheng";

-- Step 3
CREATE TABLE tekcampers like students.tekcamp01;

-- Step 4
INSERT INTO tekcampers
SELECT *
FROM students.tekcamp01;

-- Step 5
update tekcampers set gender=education, education=gender;

ALTER TABLE "tc1-justin-cheng".tekcampers DROP COLUMN education;
ALTER TABLE "tc1-justin-cheng".tekcampers
ADD education VARCHAR(100);


insert into tekcampers
    (first_name, last_name, gender, education)
values
    ("Aaron", "White", "M", NULL),
    ("Devon", "Brewster", "M", NULL),
    ("Kevin", "Keesee", "M" , " High
School Diploma"),
    ("Tyler", "Clements", "M", NULL),
    ("Vimala", "Murthy", "F", "Masters Degree"),
    ("Cody", "Clark", "M", NULL),
    ("Gowtham", "Katta", "M", " Bachelors Degree"),
    ("John", "Bozarov", "M", NULL),
    ("Justin", "Cheng", "M", "Some College"),
    ("Monica", "Howard", "F", NULL);

-- Step 6
delete from tekcampers where first_name="Jake";
delete from tekcampers where first_name="Desaree";
delete from tekcampers where first_name="Rosa";

-- Step 7
update tekcampers set gender = "M" where last_name="Chavez";
update tekcampers set gender = "M" where last_name="Torres";
update tekcampers set gender = "M" where last_name="Kinney";
update tekcampers set gender = "M" where last_name="Gonzalez";
update tekcampers set gender = "F" where last_name="Ulysse";

update tekcampers set education = "Bachelors Degree" where first_name="Abigail";
update tekcampers set education = "Bachelors Degree" where first_name="Adam";
update tekcampers set education = "Bachelors Degree" where first_name="Jose";
update tekcampers set education = "Bachelors Degree" where last_name="Castiglione";
update tekcampers set education = "Bachelors Degree" where first_name="Jessica";
update tekcampers set education = "Bachelors Degree" where first_name="Gotham";
update tekcampers set education = "Bachelors Degree" where first_name="Sabitha";
update tekcampers set education = "Bachelors Degree" where first_name="Katherine";
update tekcampers set education = "High School Diploma" where last_name="Keesee";
update tekcampers set education = "High School Diploma" where last_name="Ibanez";
update tekcampers set education = "Associates Degree" where last_name="Shane";
update tekcampers set education = "Associates Degree" where last_name="Waters";
update tekcampers set education = "Masters Degree" where last_name="Golden";
update tekcampers set education = "Masters Degree" where last_name="Murthy";
update tekcampers set education = "Masters Degree" where last_name="Choat";
update tekcampers set education = "Some College" where last_name="Betts";
update tekcampers set education = "Some College" where last_name="Gonzalez";
update tekcampers set education = "Some College" where last_name="Ladd";
update tekcampers set education = "Some College" where last_name="Barbosa";
update tekcampers set education = "Some College" where last_name="Clark";
update tekcampers set education = "Some College" where last_name="Cheng";

-- Step 8
SELECT *
FROM "tc1-justin-cheng".tekcampers
where LENGTH(first_name)>7;

SELECT *
FROM "tc1-justin-cheng".tekcampers
order by first_name;

SELECT *
FROM "tc1-justin-cheng".tekcampers
order by last_name;

SELECT *
FROM "tc1-justin-cheng".tekcampers
where gender="M";

SELECT *
FROM "tc1-justin-cheng".tekcampers
where gender="F";

SELECT *
FROM "tc1-justin-cheng".tekcampers
where education="Masters Degree";

SELECT *
FROM "tc1-justin-cheng".tekcampers
where education="Bachelors Degree";

SELECT *
FROM "tc1-justin-cheng".tekcampers
where education="Associates Degree";

SELECT *
FROM "tc1
-justin-cheng".tekcampers
where education is null OR education != "Masters Degree" or education != "Associates Degree" or education != "Bachelors Degree";

-- Step 9
create table ta_mark like tekcampers;

insert into ta_mark
select *
from tekcampers
where 
last_name="Bozarov" OR
    last_name="Cheng" OR
    last_name="Keesee" OR
    last_name="Brooks" OR
    last_name="Choat" OR
    last_name="Clements" OR
    last_name="Johnson" OR
    last_name="White" OR
    last_name="Waters" OR
    last_name="Clark" OR
    last_name="Katta" OR
    last_name="Bates";

-- Step 10
create table hobbies
(
    id int NOT NULL
    AUTO_INCREMENT,
    hobby VARCHAR
    (25) NOT NULL,
    PRIMARY KEY
    (id)
);

    insert into hobbies
    VALUES
        (1, "Eating"),
        (2, "Sleeping"),
        (3, "Video Games"),
        (4, "Golfing"),
        (5, "Cattle Rustling"),
        (6, "Gardening"),
        (7, "Working Out"),
        (8, "Pickle Ball"),
        (9, "Jiu Jitsu"),
        (10, "Writing"),
        (11, "Coding"),
        (12, "Listening to Music");

    -- Step 11
    Alter table tekcampers add HobbyID int;
    Alter table tekcampers add FOREIGN KEY (HobbyID) REFERENCES hobbies(id);
    update tekcampers set HobbyID = (SELECT FLOOR(RAND()*(12-1+1)+1));

    select ta_mark.first_name, ta_mark.last_name, tekcampers.HobbyID, hobbies.hobby
    from ta_mark left join tekcampers on tekcampers.id = ta_mark.id join hobbies on hobbies.id = tekcampers.HobbyID;

    -- Step 12
    Alter table tekcampers add bootcamp varchar (50);

    -- Step 12
    Alter table ta_mark add bootcamp varchar (50);
