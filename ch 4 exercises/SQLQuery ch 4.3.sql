--returns 3 columns
SELECT v.VendorName, v.DefaultAccountNo, g.AccountDescription
FROM Vendors v
JOIN GLAccounts g
    ON v.DefaultAccountNo = g.accountNo
order by g.AccountDescription, v.VendorName