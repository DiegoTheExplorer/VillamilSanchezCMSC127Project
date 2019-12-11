create database project CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use project;
create table COMPANY(
    cname VARCHAR(32) NOT NULL,
    cloc VARCHAR(64) NOT NULL,
    govDep VARCHAR(60),
    usec VARCHAR(32),
    ceo VARCHAR(32),
    product VARCHAR(16),
    CONSTRAINT company_cname_pk PRIMARY KEY(cname)
);

create table PROJECT(
    pid VARCHAR(10) NOT NULL,
    goal VARCHAR(64),
    pdesc VARCHAR(64),
    pcodename VARCHAR(16),
    cname VARCHAR(32) NOT NULL,
    CONSTRAINT project_pid_pk PRIMARY KEY(pid),
    CONSTRAINT project_cname_fk FOREIGN KEY(cname) REFERENCES COMPANY(cname)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE
);

create table COMPANY_RECEIVES_PROJECT(
    pid VARCHAR(10) NOT NULL,
    cname VARCHAR(32) NOT NULL,
    startdate DATE,
    enddate DATE,
    CONSTRAINT company_receives_project_pid_pk FOREIGN KEY(pid) REFERENCES PROJECT(pid)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE,
    CONSTRAINT company_receives_project_cname_pk FOREIGN KEY(cname) REFERENCES COMPANY(cname)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE
);

create table ADVISER(
    empNo VARCHAR(10) NOT NULL,
    dept VARCHAR(24),
    aname VARCHAR(32) NOT NULL,
    pid VARCHAR(10) NOT NULL,
    CONSTRAINT adviser_empno_pk PRIMARY KEY(empNo),
    CONSTRAINT adviser_pid_fk FOREIGN KEY(Pid) REFERENCES PROJECT(pid)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE
);

create table ADVISER_SPECIALTIES(
    empNo VARCHAR(10) NOT NULL,
    aname VARCHAR(32) NOT NULL,
    pid VARCHAR(10) NOT NULL,
    specialty VARCHAR(40) NOT NULL,
    CONSTRAINT adviser_specialties_pid_fk FOREIGN KEY(pid) REFERENCES PROJECT(pid)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE,
    CONSTRAINT adviser_specialties_empNo_fk FOREIGN KEY(empNo) REFERENCES ADVISER(empNo)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE
);

create table STUDENT(
    snum VARCHAR(10) NOT NULL,
    sname VARCHAR(32) NOT NULL,
    course VARCHAR(20),
    bday DATE,
    empno VARCHAR(10) NOT NULL,
    cname VARCHAR(32) NOT NULL,
    pid VARCHAR(10) NOT NULL,
    CONSTRAINT student_snum_pk PRIMARY KEY(snum),
    CONSTRAINT student_empno_fk FOREIGN KEY(empno) REFERENCES ADVISER(empno)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE,
    CONSTRAINT student_cname_fk FOREIGN KEY(cname) REFERENCES COMPANY(cname)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE,
    CONSTRAINT student_pid_fk FOREIGN KEY(pid) REFERENCES PROJECT(pid)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE
);

create table TASK(
    taskid VARCHAR(3) NOT NULL,
    dateass DATE,
    datefin DATE,
    difficulty INT(2),
    duration INT(2),
    designSpecs VARCHAR(64) NOT NULL,
    datainputtype VARCHAR(12),
    dataoutputtype VARCHAR(12),
    isfrontend BOOLEAN,
    isbackend BOOLEAN,
    pid VARCHAR(10) NOT NULL,
    dnum VARCHAR(10) NOT NULL,
    snum VARCHAR(10) NOT NULL,
    CONSTRAINT task_taskid_pk PRIMARY KEY(taskid),
    CONSTRAINT task_pid_fk FOREIGN KEY(pid) REFERENCES PROJECT(pid)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE,
    CONSTRAINT task_snum_fk FOREIGN KEY(snum) REFERENCES STUDENT(snum)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE
);

create table STUDENT_INTERNS_COMPANY(
    snum VARCHAR(10) NOT NULL,
    cname VARCHAR(32) NOT NULL,
    sem VARCHAR(7),
    year YEAR,
    salary INT(5),
    CONSTRAINT student_interns_company_snum_fk FOREIGN KEY(snum) REFERENCES STUDENT(snum)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE,
    CONSTRAINT student_interns_company_cname_fk FOREIGN KEY(cname) REFERENCES COMPANY(cname)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE
);

create table STUDENT_ASSIGNED_TASK (
    snum VARCHAR(5) NOT NULL,
    taskid VARCHAR(12) NOT NULL,
    CONSTRAINT student_assigned_task_snum_pk FOREIGN KEY(snum) REFERENCES STUDENT(snum)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE,
    CONSTRAINT student_assigned_task_taskid_pk FOREIGN KEY(taskid) REFERENCES TASK(taskid)
   	 ON DELETE CASCADE
   	 ON UPDATE CASCADE
);
-- END OF DML
