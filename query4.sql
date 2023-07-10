SELECT DISTINCT p.cameraID as theCameraID, p.photoTimestamp as theTimestamp, o.name as theOwnerName, o.address as theOwnerAddress 
FROM Photos p, Owners o, Cameras c, Vehicles v, Highways h
WHERE p.cameraID = c.cameraID AND
        c.isCameraWorking = TRUE AND
        DATE(p.photoTimestamp) = '2022-12-1' AND
        p.vehicleLicensePlate = v.vehicleLicensePlate AND
        (v.color = 'RE' OR v.color = 'GR') AND
        v.ownerLicenseID = o.ownerLicenseID AND
        o.name LIKE '_o%' AND
        c.highwayNum = h.highwayNum AND
        h.speedLimit <= 65
;
