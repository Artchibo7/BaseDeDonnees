
CREATE TABLE accommodation
(
  ID          INTEGER      NOT NULL AUTO_INCREMENT,
  number      INTEGER      NOT NULL,
  rent        INTEGER      NOT NULL,
  description VARCHAR(200) NULL    ,
  student_id  INTEGER      NULL    ,
  PRIMARY KEY (ID)
);

ALTER TABLE accommodation
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

CREATE TABLE Activity
(
  ID          INTEGER      NOT NULL AUTO_INCREMENT,
  Name        VARCHAR(200) NOT NULL,
  description VARCHAR(200) NULL    ,
  place       VARCHAR(200) NOT NULL,
  date        DATETIME     NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE Activity
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

CREATE TABLE activity_student
(
  ID          INTEGER NOT NULL AUTO_INCREMENT,
  student_id  INTEGER NOT NULL,
  activity_id INTEGER NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE activity_student
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

CREATE TABLE department
(
  ID            INTEGER      NOT NULL AUTO_INCREMENT,
  name          VARCHAR(200) NOT NULL,
  speciality_id INTEGER      NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE department
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

CREATE TABLE speciality
(
  ID          INTEGER      NOT NULL AUTO_INCREMENT,
  name        VARCHAR(200) NOT NULL,
  description VARCHAR(200) NULL    ,
  PRIMARY KEY (ID)
);

ALTER TABLE speciality
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

CREATE TABLE student
(
  ID            INTEGER      NOT NULL AUTO_INCREMENT,
  name          VARCHAR(200) NOT NULL,
  surname       VARCHAR(200) NOT NULL,
  birthdate     DATE         NOT NULL,
  email         VARCHAR(200) NOT NULL,
  department_id INTEGER      NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE student
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

ALTER TABLE accommodation
  ADD CONSTRAINT FK_student_TO_accommodation
    FOREIGN KEY (student_id)
    REFERENCES student (ID);

ALTER TABLE department
  ADD CONSTRAINT FK_speciality_TO_department
    FOREIGN KEY (speciality_id)
    REFERENCES speciality (ID);

ALTER TABLE activity_student
  ADD CONSTRAINT FK_student_TO_activity_student
    FOREIGN KEY (student_id)
    REFERENCES student (ID);

ALTER TABLE activity_student
  ADD CONSTRAINT FK_Activity_TO_activity_student
    FOREIGN KEY (activity_id)
    REFERENCES Activity (ID);

ALTER TABLE student
  ADD CONSTRAINT FK_department_TO_student
    FOREIGN KEY (department_id)
    REFERENCES department (ID);
