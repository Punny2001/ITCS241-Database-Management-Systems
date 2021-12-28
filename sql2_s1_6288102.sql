INSERT INTO `professor` (`EMP_NUM`, `EMP_FNAME`, `EMP_LNAME`, `EMP_DOB`, `DEPT_CODE`, `PROF_EXTENSION`) VALUES
(101, 'Charles', 'Xavier', '1975-05-04 00:00:00', 'CIS', null),
(702, 'Stephen', 'Strange', '1988-07-04 00:00:00', 'BIOL', '7702');

INSERT INTO `student` (`STU_NUM`, `STU_FNAME`, `STU_LNAME`, `STU_DOB`, `STU_CLASS`, `STU_GPA`, `DEPT_CODE`, `EMP_NUM`) VALUES
(773355, 'Krissanapong', 'Palakham', '2001-02-26', '1', '3.29', 'CIS', 702);

UPDATE `student` 
SET `EMP_NUM` = 101
WHERE `STU_NUM` = 773355;

UPDATE `professor` 
SET `PROF_EXTENSION` = 0077
WHERE `EMP_NUM` = 101;

DELETE FROM `professor`
WHERE `EMP_NUM` = 702;

SELECT *
FROM `student`;

SELECT `EMP_FNAME`, `EMP_LNAME`, `DEPT_CODE` 
FROM `professor`
WHERE `DEPT_CODE` = 'CIS';

SELECT `EMP_FNAME`, `EMP_LNAME`
FROM `professor`
WHERE `EMP_FNAME` LIKE '%m%' AND `EMP_LNAME` LIKE '%m%';

SELECT `STU_FNAME`, `STU_LNAME`, `DEPT_CODE`
FROM `student`
WHERE `DEPT_CODE` = 'ENG' OR `DEPT_CODE` = 'ART' OR `DEPT_CODE` = 'SOC' OR `DEPT_CODE` = 'HIST'
ORDER BY `DEPT_CODE` ASC;

SELECT `COURSE_CODE`, `COURSE_NAME`, (`CRS_CREDIT` * 250) AS `tuition_fee`, `DEPT_CODE`
FROM `course`
WHERE `COURSE_NAME` LIKE 'Intro.%'
ORDER BY `DEPT_CODE` ASC;

SELECT DISTINCT `COURSE_CODE`, `CLASS_ROOM`
FROM `class`
WHERE `CLASS_ROOM` LIKE 'KLR%' AND `CLASS_CODE` BETWEEN 20000 AND 30000;