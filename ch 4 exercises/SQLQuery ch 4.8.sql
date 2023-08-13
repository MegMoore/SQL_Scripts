SELECT VendorName, VendorState
FROM Vendors
WHERE VendorState = 'CA'
UNION
SELECT VendorName, IIF(VendorState = 'CA', 'CA', 'Outside CA')
from Vendors
WHERE VendorState != 'CA'
ORDER BY VendorName;