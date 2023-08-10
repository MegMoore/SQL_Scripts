--ch3.3 Write a Select statement that returns one column from the Vendors table called Full Name.
SELECT VendorContactLName + ', ' + VendorContactFName as 'Full Name'
From Vendors
ORDER BY VendorContactLName, VendorContactFName;