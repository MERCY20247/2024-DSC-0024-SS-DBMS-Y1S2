-- Question1(iii)
SELECT tblstudent.StudentName, tblstudent.StudentID, tblstudent.Year = tblFinance.TuitionFee
FROM tblstudent
INNER JOIN tblFinance ON tblstudent.StudentID = tblFinance.StudentID
WHERE tblFinance.TuitionFee >= 30000;