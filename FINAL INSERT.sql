INSERT INTO COMPANY(cname,cloc,usec,govdep,ceo,product) VALUES ('Twinte','Rokiškis','Kakalina Ysson','Services',NULL,NULL);
INSERT INTO COMPANY(cname,cloc,usec,govdep,ceo,product) VALUES ('Roodel','San Jose','Grace Bernardinelli','Product Management',NULL,NULL);
INSERT INTO COMPANY(cname,cloc,usec,govdep,ceo,product) VALUES ('Quimm','Ukhta','Abigael Sjostrom','Human Resources',NULL,NULL);
INSERT INTO COMPANY(cname,cloc,usec,govdep,ceo,product) VALUES ('Topicstorm','Vicente Guerrero','Joline Radbond','Product Management',NULL,NULL);
INSERT INTO COMPANY(cname,cloc,usec,govdep,ceo,product) VALUES ('Rhynoodle','As Samawah','Ruthy Crinson','Human Resources',NULL,NULL);
INSERT INTO COMPANY(cname,cloc,usec,govdep,ceo,product) VALUES ('Gabtype','Jomboy','Rosina Shurmer','Product Management',NULL,NULL);
INSERT INTO COMPANY(cname,cloc,usec,govdep,ceo,product) VALUES ('Blognation','Quibdó',NULL,NULL,'Brooks Bavage','Beauty');
INSERT INTO COMPANY(cname,cloc,usec,govdep,ceo,product) VALUES ('Youspan','Yingcheng','Vassily Buessen','Sales',NULL,NULL);
INSERT INTO COMPANY(cname,cloc,usec,govdep,ceo,product) VALUES ('Yabox','Lyozna',NULL,NULL,'Marthena Teather','Games');
INSERT INTO COMPANY(cname,cloc,usec,govdep,ceo,product) VALUES ('Quatz','Jiujie','Barde Iskowicz','Marketing',NULL,NULL);

INSERT INTO PROJECT(pid,goal,pdesc,pcodename,cname) VALUES (1,2001,'Lexus','ES','Twinte');
INSERT INTO PROJECT(pid,goal,pdesc,pcodename,cname) VALUES (2,2004,'Ford','Freestar','Roodel');
INSERT INTO PROJECT(pid,goal,pdesc,pcodename,cname) VALUES (3,2012,'Volvo','C70','Quimm');
INSERT INTO PROJECT(pid,goal,pdesc,pcodename,cname) VALUES (4,1989,'Mazda','B2600','Topicstorm');
INSERT INTO PROJECT(pid,goal,pdesc,pcodename,cname) VALUES (5,2002,'Land Rover','Discovery','Rhynoodle');
INSERT INTO PROJECT(pid,goal,pdesc,pcodename,cname) VALUES (6,1990,'Ford','E-Series','Gabtype');
INSERT INTO PROJECT(pid,goal,pdesc,pcodename,cname) VALUES (7,1993,'Volkswagen','Cabriolet','Blognation');
INSERT INTO PROJECT(pid,goal,pdesc,pcodename,cname) VALUES (8,2008,'Jeep','Commander','Youspan');
INSERT INTO PROJECT(pid,goal,pdesc,pcodename,cname) VALUES (9,2006,'Mercedes-Benz','CL-Class','Yabox');
INSERT INTO PROJECT(pid,goal,pdesc,pcodename,cname) VALUES (10,2005,'Chevrolet','Express 2500','Quatz');

INSERT INTO COMPANY_RECEIVES_PROJECT(pid,cname,startdate,enddate) VALUES (1,'Twinte','2017-11-26 17:52:20','2019-04-16 22:22:59');
INSERT INTO COMPANY_RECEIVES_PROJECT(pid,cname,startdate,enddate) VALUES (2,'Roodel','2018-06-28 17:38:21','2019-05-06 00:34:06');
INSERT INTO COMPANY_RECEIVES_PROJECT(pid,cname,startdate,enddate) VALUES (3,'Quimm','2018-07-22 22:25:10','2019-07-06 08:13:19');
INSERT INTO COMPANY_RECEIVES_PROJECT(pid,cname,startdate,enddate) VALUES (4,'Topicstorm','2018-08-29 00:54:06','2018-12-12 09:30:37');
INSERT INTO COMPANY_RECEIVES_PROJECT(pid,cname,startdate,enddate) VALUES (5,'Rhynoodle','2018-07-03 17:12:38','2019-08-09 10:28:25');
INSERT INTO COMPANY_RECEIVES_PROJECT(pid,cname,startdate,enddate) VALUES (6,'Gabtype','2018-09-14 17:35:00','2018-11-26 17:18:33');
INSERT INTO COMPANY_RECEIVES_PROJECT(pid,cname,startdate,enddate) VALUES (7,'Blognation','2018-02-06 18:17:06','2019-10-28 13:48:10');
INSERT INTO COMPANY_RECEIVES_PROJECT(pid,cname,startdate,enddate) VALUES (8,'Youspan','2018-01-23 15:07:04','2019-04-25 14:12:52');
INSERT INTO COMPANY_RECEIVES_PROJECT(pid,cname,startdate,enddate) VALUES (9,'Yabox','2018-03-05 05:31:40','2018-11-25 00:43:45');
INSERT INTO COMPANY_RECEIVES_PROJECT(pid,cname,startdate,enddate) VALUES (10,'Quatz','2018-04-29 15:03:51','2019-06-02 23:04:31');


INSERT INTO ADVISER(pid,cname,startdate,enddate) VALUES (1,'Web Designer III','Shaw Hanson','2');
INSERT INTO ADVISER(pid,cname,startdate,enddate) VALUES (2,'Senior Developer','Fernanda Bloxsom','9');
INSERT INTO ADVISER(pid,cname,startdate,enddate) VALUES (3,'Desktop Support Technician','Vivyan Honatsch','8');
INSERT INTO ADVISER(pid,cname,startdate,enddate) VALUES (4,'Structural Engineer','Phil Welden','1');
INSERT INTO ADVISER(pid,cname,startdate,enddate) VALUES (5,'Web Designer I','Jodi Jacqueme','7');
INSERT INTO ADVISER(pid,cname,startdate,enddate) VALUES (6,'Senior Editor','Ted Ness','5');
INSERT INTO ADVISER(pid,cname,startdate,enddate) VALUES (7,'Librarian','Tuck Alesbrook','9');
INSERT INTO ADVISER(pid,cname,startdate,enddate) VALUES (8,'Executive Secretary','Lockwood Meaker','5');
INSERT INTO ADVISER(pid,cname,startdate,enddate) VALUES (9,'Recruiting Manager','Hubert Murra','9');
INSERT INTO ADVISER(pid,cname,startdate,enddate) VALUES (10,'Biostatistician I','Nisse Windus','5');

INSERT INTO ADVISER_SPECIALTIES(pid,cname,startdate,enddate) VALUES (7,'Tuck Alesbrook','9','Capital Goods');
INSERT INTO ADVISER_SPECIALTIES(pid,cname,startdate,enddate) VALUES (4,'Phil Welden','1','Neural Networks');
INSERT INTO ADVISER_SPECIALTIES(pid,cname,startdate,enddate) VALUES (6,'Ted Ness','5','Technology');
INSERT INTO ADVISER_SPECIALTIES(pid,cname,startdate,enddate) VALUES (2,'Fernanda Bloxsom','9','Consumer Services');
INSERT INTO ADVISER_SPECIALTIES(pid,cname,startdate,enddate) VALUES (3,'Vivyan Honatsch','8','Health Care');
INSERT INTO ADVISER_SPECIALTIES(pid,cname,startdate,enddate) VALUES (8,'Lockwood Meaker','5','Technology');
INSERT INTO ADVISER_SPECIALTIES(pid,cname,startdate,enddate) VALUES (1,'Shaw Hanson','2','Neural Networks');
INSERT INTO ADVISER_SPECIALTIES(pid,cname,startdate,enddate) VALUES (2,'Fernanda Bloxsom','9','Capital Goods');
INSERT INTO ADVISER_SPECIALTIES(pid,cname,startdate,enddate) VALUES (4,'Phil Welden','1','Finance');
INSERT INTO ADVISER_SPECIALTIES(pid,cname,startdate,enddate) VALUES (9,'Hubert Murra','9','Capital Goods');

INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid) VALUES (1,'Vail Esson','Technology','2018-12-28 12:13:05',5,'Youspan',8);
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid) VALUES (2,'Germayne Bungey','Technology','2019-10-20 19:01:11',10,'Blognation',7);
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid) VALUES (3,'Bren MacGorley','Consumer Durables','2019-04-01 12:43:49',9,'Blognation',7);
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid) VALUES (4,'Cassie Pirozzi','Miscellaneous','2019-03-12 01:26:49',9,'Twinte',1);
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid) VALUES (5,'Archaimbaud Felgat','Consumer Services','2019-04-09 21:38:51',4,'Rhynoodle',5);
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid) VALUES (6,'Carmon Dellenbach','Health Care','2019-02-03 22:06:45',1,'Blognation',7);
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid) VALUES (7,'Barbara-anne Bisp','Computer Science','2019-02-04 10:02:43',6,'Roodel',2);
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid) VALUES (8,'Pippa Gloster','Consumer Services','2019-01-07 06:35:51',5,'Roodel',2);
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid) VALUES (9,'Ira Beel','Technology','2019-06-29 14:46:21',4,'Blognation',7);
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid) VALUES (10,'Natale Iglesia','Health Care','2019-02-17 18:21:51',10,'Blognation',7);

INSERT INTO TASK(taskid,dateass,datefin,difficulty,duration,designspecs,datainputtype,dataoutputtype,isfrontend,isbackend,pid,snum) VALUES (1,'6/11/2018','11/28/2018',9,170.5254282407,'Sprouts - Alfalfa','Orange','Fuscia',NULL,NULL,6,7);
INSERT INTO TASK(taskid,dateass,datefin,difficulty,duration,designspecs,datainputtype,dataoutputtype,isfrontend,isbackend,pid,snum) VALUES (2,'6/6/2018','4/18/2019',2,315.800787037,'Vermouth - White, Cinzano','Khaki','Aquamarine','false','false',9,6);
INSERT INTO TASK(taskid,dateass,datefin,difficulty,duration,designspecs,datainputtype,dataoutputtype,isfrontend,isbackend,pid,snum) VALUES (3,'4/7/2018','1/25/2019',1,292.8751273148,'Pasta - Canelloni','Orange','Red','false','true',9,9);
INSERT INTO TASK(taskid,dateass,datefin,difficulty,duration,designspecs,datainputtype,dataoutputtype,isfrontend,isbackend,pid,snum) VALUES (4,'7/23/2018','1/31/2019',4,191.8419328704,'Wine - Pinot Noir Mondavi Coastal','Aquamarine','Fuscia',NULL,NULL,3,10);
INSERT INTO TASK(taskid,dateass,datefin,difficulty,duration,designspecs,datainputtype,dataoutputtype,isfrontend,isbackend,pid,snum) VALUES (5,'3/9/2018','8/19/2019',2,527.7404282407,'Sambuca - Opal Nera','Orange','Indigo','false','true',3,5);
INSERT INTO TASK(taskid,dateass,datefin,difficulty,duration,designspecs,datainputtype,dataoutputtype,isfrontend,isbackend,pid,snum) VALUES (6,'8/10/2018','4/15/2019',4,247.9952314815,'Chocolate - White','Khaki','Maroon','false','false',6,4);
INSERT INTO TASK(taskid,dateass,datefin,difficulty,duration,designspecs,datainputtype,dataoutputtype,isfrontend,isbackend,pid,snum) VALUES (7,'10/22/2018','10/11/2019',3,353.5232291667,'Lobster - Tail, 3 - 4 Oz','Orange','Green',NULL,NULL,4,10);
INSERT INTO TASK(taskid,dateass,datefin,difficulty,duration,designspecs,datainputtype,dataoutputtype,isfrontend,isbackend,pid,snum) VALUES (8,'12/22/2017','3/8/2019',6,441.3819444444,'Muffin - Mix - Mango Sour Cherry','Aquamarine','Goldenrod','false','true',9,9);
INSERT INTO TASK(taskid,dateass,datefin,difficulty,duration,designspecs,datainputtype,dataoutputtype,isfrontend,isbackend,pid,snum) VALUES (9,'6/28/2018','6/18/2019',10,355.0565046296,'Bread - Hamburger Buns','Violet','Green','false','true',5,6);
INSERT INTO TASK(taskid,dateass,datefin,difficulty,duration,designspecs,datainputtype,dataoutputtype,isfrontend,isbackend,pid,snum) VALUES (10,'1/20/2018','6/7/2019',7,503.5138194444,'Wine - Ruffino Chianti Classico','Turquoise','Goldenrod',NULL,NULL,7,5);


INSERT INTO STUDENT_INTERNS_COMPANY(snum,cname,year,salary,sem) VALUES (7,'Youspan',1999,86167,1);
INSERT INTO STUDENT_INTERNS_COMPANY(snum,cname,year,salary,sem) VALUES (6,'Blognation',2009,37002,1);
INSERT INTO STUDENT_INTERNS_COMPANY(snum,cname,year,salary,sem) VALUES (6,'Yabox',2011,51768,1);
INSERT INTO STUDENT_INTERNS_COMPANY(snum,cname,year,salary,sem) VALUES (6,'Topicstorm',2006,68422,1);
INSERT INTO STUDENT_INTERNS_COMPANY(snum,cname,year,salary,sem) VALUES (1,'Twinte',1991,94520,2);
INSERT INTO STUDENT_INTERNS_COMPANY(snum,cname,year,salary,sem) VALUES (3,'Twinte',2012,73092,2);
INSERT INTO STUDENT_INTERNS_COMPANY(snum,cname,year,salary,sem) VALUES (3,'Roodel',2009,70629,2);
INSERT INTO STUDENT_INTERNS_COMPANY(snum,cname,year,salary,sem) VALUES (1,'Twinte',2012,82121,1);
INSERT INTO STUDENT_INTERNS_COMPANY(snum,cname,year,salary,sem) VALUES (4,'Twinte',2007,75926,2);
INSERT INTO STUDENT_INTERNS_COMPANY(snum,cname,year,salary,sem) VALUES (1,'Blognation',2001,68483,2);

INSERT INTO STUDENT_ASSIGNED_TASK(snum,taskid) VALUES (3,2);
INSERT INTO STUDENT_ASSIGNED_TASK(snum,taskid) VALUES (1,6);
INSERT INTO STUDENT_ASSIGNED_TASK(snum,taskid) VALUES (3,10);
INSERT INTO STUDENT_ASSIGNED_TASK(snum,taskid) VALUES (6,1);
INSERT INTO STUDENT_ASSIGNED_TASK(snum,taskid) VALUES (4,8);
INSERT INTO STUDENT_ASSIGNED_TASK(snum,taskid) VALUES (1,7);
INSERT INTO STUDENT_ASSIGNED_TASK(snum,taskid) VALUES (6,10);
INSERT INTO STUDENT_ASSIGNED_TASK(snum,taskid) VALUES (6,5);
INSERT INTO STUDENT_ASSIGNED_TASK(snum,taskid) VALUES (1,1);
INSERT INTO STUDENT_ASSIGNED_TASK(snum,taskid) VALUES (3,5);