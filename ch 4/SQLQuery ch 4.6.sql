SELECT v1.vendorid, v1.vendorname, v2.vendorname NAME
FROM vendors v1
JOIN vendors v2
    on v1.vendorcontactfname = v2.vendorcontactfname
        and v1.vendorid != v2.vendorid