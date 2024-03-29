use project;
create table STUDENT(
	Snum VARCHAR(10) NOT NULL,
	Sname VARCHAR(32) NOT NULL,
	Course VARCHAR(20),
	Bday DATE,
	Empno VARCHAR(10) NOT NULL,
	Cname VARCHAR(32) NOT NULL,
	Pid VARCHAR(10) NOT NULL,
	CONSTRAINT student_snum_pk PRIMARY KEY(Snum),
	CONSTRAINT student_empno_fk FOREIGN KEY(Empno) REFERENCES ADVISER(Empno),
	CONSTRAINT student_cname_fk FOREIGN KEY(Cname) REFERENCES COMPANY(Cname),
	CONSTRAINT student_pid_fk FOREIGN KEY(Pid) REFERENCES PROJECT(Pid)
)ENGINE=InnoDB;
create table ADVISER(
	EmpNo VARCHAR(10) NOT NULL,
	Dept VARCHAR(24),
	Aname VARCHAR(32) NOT NULL,
	Pid VARCHAR(10) NOT NULL,
	CONSTRAINT adviser_empno_pk PRIMARY KEY(EmpNo),
	CONSTRAINT adviser_pid_fk FOREIGN KEY(Pid) REFERENCES PROJECT(Pid)
)ENGINE=InnoDB;
create table ADVISER_SPECIALTIES(
	EmpNo VARCHAR(10) NOT NULL,
	Aname VARCHAR(32) NOT NULL,
	Pid VARCHAR(10) NOT NULL,
	CONSTRAINT adviser_specialties_pid_fk FOREIGN KEY(Pid) REFERENCES PROJECT(Pid)
)ENGINE=InnoDB;
create table STUDENT_INTERNS_COMPANY(
	Snum VARCHAR(10) NOT NULL,
	Cname VARCHAR(32) NOT NULL,
	Sem VARCHAR(7),
	Year YEAR,
	Salary INT(5),
	CONSTRAINT student_interns_company_snum_pk PRIMARY KEY(Snum),
	CONSTRAINT student_interns_company_cname_pk PRIMARY KEY(Cname)
)ENGINE=InnoDB;
create table TASK(
	TaskId VARCHAR(3) NOT NULL,
	Dateass DATE,
	Datefin DATE,
	Difficulty INT(2),
	Duration INT(2),
	DesignSpecs VARCHAR(64) NOT NULL,
	DataInputType VARCHAR(12),
	DataOutputType VARCHAR(12),
	IsFrontEnd VARBINARY,
	IsBackend VARBINARY,
	Pid VARCHAR(10) NOT NULL,
	Snum VARCHAR(10) NOT NULL,
	CONSTRAINT task_taskid_pk PRIMARY KEY(TaskId),
	CONSTRAINT task_pid_fk FOREIGN KEY(Pid) REFERENCES branch PROJECT(Pid),
	CONSTRAINT task_snum_fk FOREIGN KEY(Snum) REFERENCES branch STUDENT(Snum)
)ENGINE=InnoDB;
create table COMPANY(
	Cname VARCHAR(32) NOT NULL,
	Cloc VARCHAR(64) NOT NULL,
	GovDep VARCHAR(8),
	Usec VARCHAR(32),
	Ceo VARCHAR(32),
	Product VARCHAR(16),
	CONSTRAINT company_cname_pk PRIMARY KEY(Cname)
)ENGINE=InnoDB;
create table COMPANY_RECEIVES_PROJECT(
	Pid VARCHAR(10) NOT NULL,
	Cname VARCHAR(32) NOT NULL,
	StartDate DATE,
	EndDate DATE,
	CONSTRAINT company_receives_project_pid_pk PRIMARY KEY(Pid),
	CONSTRAINT company_receives_project_cname_pk PRIMARY KEY(Cname)
)ENGINE=InnoDB;
create table PROJECT(
	Pid VARCHAR(10) NOT NULL,
	Goal VARCHAR(64),
	Pdesc VARCHAR(64),
	Pcodename VARCHAR(16),
	Cname VARCHAR(32) NOT NULL,
	CONSTRAINT project_pid_pk PRIMARY KEY(Pid),
	CONSTRAINT project_cname_fk FOREIGN KEY(Cname) REFERENCES branch COMPANY(Cname)
)ENGINE=InnoDB;
