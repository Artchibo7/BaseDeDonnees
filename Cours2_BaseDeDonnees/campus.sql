
CREATE TABLE accomodation
(
  ID          INTEGER     NOT NULL AUTO_INCREMENT,
  number      INTEGER     NOT NULL,
  rent        INTEGER     NOT NULL,
  description VARCHAR(50) NULL    ,
  student_id  INTEGER     NULL    ,
  PRIMARY KEY (ID)
);

ALTER TABLE accomodation
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

CREATE TABLE Activity
(
  ID          INTEGER     NOT NULL AUTO_INCREMENT,
  Name        VARCHAR(50) NOT NULL,
  description VARCHAR(50) NULL    ,
  place       VARCHAR(50) NULL    ,
  date        DATETIME    NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE Activity
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

CREATE TABLE activity_student
(
  ID               INTEGER NOT NULL AUTO_INCREMENT,
  student_activity INTEGER NOT NULL,
  Activity_student INTEGER NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE activity_student
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

CREATE TABLE departement
(
  ID            INTEGER     NOT NULL AUTO_INCREMENT,
  name          VARCHAR(50) NOT NULL,
  speciality_id INTEGER     NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE departement
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

CREATE TABLE speciality
(
  ID          INTEGER     NOT NULL AUTO_INCREMENT,
  name        VARCHAR(50) NULL    ,
  description VARCHAR(50) NULL    ,
  PRIMARY KEY (ID)
);

ALTER TABLE speciality
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

CREATE TABLE student
(
  ID             INTEGER     NOT NULL AUTO_INCREMENT,
  name           VARCHAR(50) NOT NULL,
  surname        VARCHAR(50) NOT NULL,
  birthdate      DATE        NOT NULL,
  email          VARCHAR(50) NOT NULL,
  departement_id INTEGER     NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE student
  ADD CONSTRAINT UQ_ID UNIQUE (ID);

ALTER TABLE accomodation
  ADD CONSTRAINT FK_student_TO_accomodation
    FOREIGN KEY (student_id)
    REFERENCES student (ID);

ALTER TABLE departement
  ADD CONSTRAINT FK_speciality_TO_departement
    FOREIGN KEY (speciality_id)
    REFERENCES speciality (ID);

ALTER TABLE activity_student
  ADD CONSTRAINT FK_student_TO_activity_student
    FOREIGN KEY (student_activity)
    REFERENCES student (ID);

ALTER TABLE activity_student
  ADD CONSTRAINT FK_Activity_TO_activity_student
    FOREIGN KEY (Activity_student)
    REFERENCES Activity (ID);

ALTER TABLE student
  ADD CONSTRAINT FK_departement_TO_student
    FOREIGN KEY (departement_id)
    REFERENCES departement (ID);
