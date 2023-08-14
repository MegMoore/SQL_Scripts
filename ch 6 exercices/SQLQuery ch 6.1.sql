SELECT DISTINCT VEndorName
from VEndors v
    JOIN invoices i 
        on v.vendorId = i.vendorId
ORDER BY VEndorName


SELECT distinct vendorName
from Vendors v 
WHERE v.VendorID in (
    select distinct VendorID
    from Invoices
)
ORDER BY VendorName