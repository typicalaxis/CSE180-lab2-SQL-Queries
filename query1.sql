SELECT DISTINCT v.vehicleLicensePlate, v.ownerState, v.year , o.expirationDate
FROM Vehicles v, Owners o
WHERE v.vehicleState = 'CA' AND
        v.year < 2021 AND
        v.ownerState <> 'CA' AND
        v.ownerState = o.ownerState AND
        o.ownerLicenseID = v.ownerLicenseID AND
        o.expirationDate IS NOT NULL
;