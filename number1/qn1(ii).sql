-- Question1(ii)
SELECT StudentName, tblFinance.TuitionFee
FROM tblstudent
INNER JOIN tblFinance ON tblstudent.StudentID = tblFinance.StudentID
WHERE tblstudent.Year = 'Y1S1';