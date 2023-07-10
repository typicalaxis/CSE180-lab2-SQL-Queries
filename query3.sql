SELECT DISTINCT highwayNum, length
FROM Highways
WHERE length > 100 AND
        highwayNum NOT IN (SELECT DISTINCT highwayNum
                        FROM Cameras
                        WHERE isCameraWorking = TRUE)
ORDER BY length DESC;