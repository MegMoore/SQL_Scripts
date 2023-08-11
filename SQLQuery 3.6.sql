--ch3.6 Write a Select statement that returns one column from the Vendors table called Full Name. Modify.
SELECT VendorContactLName + ', ' + VendorContactFName as 'Full Name'
From Vendors
WHERE VendorContactLName not in 
        SELECT vendorcontactlname
        from Vendors
        WHERE like '[a - e]'
ORDER BY VendorContactLName, VendorContactFName;