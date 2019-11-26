-- COMPANY
SELECT * FROM COMPANY WHERE cname = cnameInp;
INSERT INTO COMPANY(cname, cloc, govdep, usec, ceo, product)
  VALUES(cnameInp, clocInp, govdepInp, usecInp, ceoInp, productInp);
DELETE FROM comapany WHERE cname = cnameInp;
UPDATE COMPANY
  SET cname = cnameInp,
      cloc = clocInp,
      govdep = govdepInp,
      usec = usecInp,
      ceo = ceoInp,
      product = productInp

-- STUDENT
SELECT * FROM STUDENT WHERE snum = snumInp;
INSERT INTO STUDENT(snum,sname,course,bday,empno,cname,pid)
  VALUES(snumInp, snameInp, courseInp, bdayInp, empnoInp, pidInp);
DELETE FROM STUDENT WHERE snum = snumInp;
UPDATE STUDENT
  SET  sname = snumInp
       course = snameInp,
       bday = courseInp,
       empno = bdayInp,
       cname = empnoInp,
       pid = pidInp
  WHERE snum = snumInp;

-- adviser
SELECT * FROM ADVISER WHERE empNo = empNoInp;
