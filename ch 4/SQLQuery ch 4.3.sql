--returns 3 columns
SELECT VendorName, DefaultAccountNo, AccountDescription
FROM Vendors v, GLAccounts
order by AccountDescription, VendorName