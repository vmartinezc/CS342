/*
Valeria Martinez Castro
HW 9-11-2020
CS 342 @ CALVIN UNIVERSITY
SINGLE TABLE SQL HW
*/


--Problem 1
SELECT VendorContactLName,
	   VendorContactFName,
	   VendorName,
	   VendorCity,
	   VendorState
FROM Vendors
ORDER BY VendorContactLName, VendorContactFName

GO

--Problem 2
SELECT VendorContactLName +', '+ ' '+ VendorContactFName AS FullName
FROM Vendors
WHERE VendorState = 'OH'
GO

--Problem 3
SELECT InvoiceTotal,
	   (InvoiceTotal * .25) AS PercentTotal,
	   (InvoiceTotal * .25) +10 AS PercentPlus10
FROM Invoices
GO

-- Problem 4
SELECT VendorContactLName + ','+' '+VendorContactFName AS FullName
FROM Vendors
WHERE VendorContactLName LIKE 'A%'
OR VendorContactLName LIKE 'D%'
OR VendorContactLName LIKE 'E%'
OR VendorContactLName LIKE 'L%'

GO

--second option for problem 4
SELECT VendorContactLName + ','+' '+VendorContactFName AS FullName
FROM Vendors
WHERE VendorContactLName LIKE '[ADEL]%'

GO

-- Problem 5
SELECT PaymentDate
FROM Invoices
WHERE PaymentDate IS NULL AND PaymentTotal <> 0
GO

-- Problem 6
SELECT *
FROM Vendors
WHERE DefaultTermsID = 3
GO

-- Problem 7
SELECT *
FROM Vendors
WHERE DefaultTermsID = 3 AND DefaultAccountNo >= 540
GO

-- Problem 8
SELECT *
FROM Vendors
WHERE VendorName LIKE '%COMPANY%'
GO


-- Problem 9
SELECT DISTINCT VendorState,
				SUBSTRING(VendorPhone,1,3) AS Prefix
FROM Vendors
GO


--Problem 10
SELECT DISTINCT VendorState,
				SUBSTRING(VendorPhone,2,3) AS Prefix
FROM Vendors
WHERE SUBSTRING(VendorPhone, 2,3) IS NOT NULL
GO

--Problem 11
SELECT TOP 5 title,
	   ytd_sales
FROM titles
ORDER BY ytd_sales DESC
GO


--Problem 12
SELECT title,
	   (ytd_sales/price) AS Sold
FROM titles
GO

--Problem 13
SELECT TOP 3 title,
	   (ytd_sales/price) AS Sold
FROM titles
ORDER BY Sold DESC
GO

/*
SELECT empName
             , totalPayToDate / DATEDIFF(day, getdate(), hireDate) AS  "Pay Time Ratio"
FROM empRecord

Why this query might encounter a problem?
I think this query might encounter a problem because we are using different data types
s

*/
