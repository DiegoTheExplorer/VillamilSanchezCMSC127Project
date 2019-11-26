-- COMPANY
SELECT * FROM COMPANY WHERE cname = cnameInp;
INSERT INTO COMPANY(cname, cloc, govdep, usec, ceo, product)
  VALUES(cnameInp, clocInp, govdepInp, usecInp, ceoInp, productInp);
DELETE FROM comapany WHERE cname = cnameInp;
UPDATE COMPANY
  SET cloc = clocInp,
      govdep = govdepInp,
      usec = usecInp,
      ceo = ceoInp,
      product = productInp
  WHERE cname = cnameInp;

-- STUDENT
SELECT * FROM STUDENT WHERE snum = snumInp;
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid)
  VALUES(snumInp, snameInp, courseInp, bdayInp, empnoInp, pidInp);
DELETE FROM STUDENT WHERE snum = snumInp;
UPDATE STUDENT
  SET  sname = snameInp
       course = courseInp,
       bday = bdayInp,
       empno = empnoInp,
       cname = cnameInp,
       pid = pidInp
  WHERE snum = snumInp;

-- ADVISER
SELECT * FROM ADVISER WHERE empNo = empNoInp;
INSERT INTO ADVISER(empno, dept, aname, pid)
  VALUES(empnoInp, deptInp, anameInp, pidInp);
DELETE FROM ADVISER WHERE empNo = empNoInp;
UPDATE ADVISER
  SET dept = deptInp,
      aname = anameInp,
      pid = pidInp
  WHERE empNo = empNoInp;

--PROJECT
SELECT * FROM PROJECT WHERE pid = pidInp;
INSERT INTO PROJECT(pid, goal, pdesc, pcodename, cname)
  VALUES(pidInp, goalInp, pdescInp, pcodenameInp, cnameInp);
DELETE FROM PROJECT WHERE pid = pidInp;
UPDATE PROJECT
  SET pid = pidInp,
      goal = goalInp,
      pdesc = pdescInp,
      pcodename = pcodenameInp,
      cname = cnameInp
  WHERE empNo = empNoInp;

-- TASK
SELECT * FROM TASK where taskId = taskIdInp;
INSERT INTO TASK(taskId, dateass, datefin, difficulty, designSpecs, datainputtype, dataoutputtype, isfrontend, isbackend, pid, snum)
  VALUES(taskIdInp, dateassInp, datefinInp, difficultyInp, designSpecsInp, datainputtypeInp, dataoutputtypeInp, isfrontendInp, isbackendInp, pidInp, snumInp);
DELETE FROM TASK WHERE taskId = taskIdInp;
UPDATE TASK
  SET dateass = dateassInp,
      datefin = datefinInp,
      difficulty = difficultyInp,
      desingSpecs = designSpecsInp,
      datainputtype = datainputtypeInp,
      dataoutputtype= dataoutputtypeInp,
      isfrontend= isfrontendInp,
      isbackend= isbackendInp,
      pid= pidInp,
      snum= snumInp
  WHERE taskId = taskIdInp;

--view all students taking an internship in a particular sem or year
SELECT std.sname, std.snum, std.course FROM (STUDENT as std JOIN STUDNET_INTERNS_COMPANY as cmp on std.cname = cmp.cname)
  WHERE std.cname = cnameInp AND cmp.sem = semInp;
--view all students taking an internship in a particular comapany
 SELECT std.sname, std.snum, std.course  FROM (STUDENT as std JOIN COMPANY as cmp on std.cname = cmp.cname)
  WHERE std.cname = cnameInp;
--view all students under an adviser
SELECT std.sname, std.snum, std.course  FROM (STUDENT as std JOIN ADVISER as adv on std.empNo = adv.empNo)
  WHERE std.empNo = empNoInp;
--view all students who are in a particular PROJECT
SELECT std.sname, std.snum, std.course  FROM (STUDENT as std JOIN PROJECT as prj on std.pid = prj.pid)
  WHERE std.pid = pidInp;
--view all tasks in a project
SELECT tsk.taskid, tsk.dateass, tsk.datefin, tsk.difficulty, tsk.designSpecs, tsk.datainputtype, tsk.dataoutputtype, tsk.isfrontend, tsk.isbackend FROM (TASK as tsk JOIN PROJECT as prj on tsk.pid = prj.pid)
  WHERE tsk.pid = pidInp;
--view a student's task given a project
SELECT tsk.taskid, tsk.dateass, tsk.datefin, tsk.difficulty, tsk.designSpecs, tsk.datainputtype, tsk.dataoutputtype, tsk.isfrontend, tsk.isbackend FROM (TASK as tsk JOIN PROJECT as prj on tsk.pid = prj.pid)
  WHERE tsk.pid = pidInp AND tsk.snum = snumInp;
--view all projects given to a company
SELECT prj.goal, prj.pdesc, prj.pcodename FROM (PROJECT AS prj JOIN COMPANY as cmp on prj.cname = cmp.cname)
  WHERE prj.cname = cnameInp;
