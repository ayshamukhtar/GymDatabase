SELECT t.FirstName, t.Specialization, s.Day, wc.ClassName
FROM Trainer t
JOIN Schedule s ON t.Trainer_ID = s.TrainerID
JOIN WorkoutClass wc ON s.AssignedClass = wc.Class_ID
WHERE t.Specialization IN ('Cardio', 'Pilates');

SELECT e.Name, e.Type, e.PurchaseDate, f.Name AS FacilityName
FROM Equipment e
JOIN Facility f ON e.Location = f.Name
WHERE e.PurchaseDate BETWEEN '2022-01-01' AND '2023-12-31'; 

SELECT m.FirstName, m.LastName, m.Address, p.Method
FROM Member m
JOIN Payment p ON m.Member_ID = p.MemberID
WHERE m.Address LIKE '%Queen%';

SELECT m.FirstName, m.LastName, wc.ClassName
FROM Member m
JOIN Member_WorkoutClass mwc ON m.Member_ID = mwc.Member_ID
JOIN WorkoutClass wc ON mwc.Class_ID = wc.Class_ID
WHERE NOT wc.Level = 'Advanced';

SELECT t.Specialization, AVG(s.EndTime - s.StartTime) AS AvgClassDuration
FROM Trainer t
JOIN Schedule s ON t.Trainer_ID = s.TrainerID
GROUP BY t.Specialization;

SELECT wc.Level, COUNT(m.Member_ID) AS TotalMembers
FROM Member m
JOIN Member_WorkoutClass mwc ON m.Member_ID = mwc.Member_ID
JOIN WorkoutClass wc ON mwc.Class_ID = wc.Class_ID
GROUP BY wc.Level
HAVING COUNT(m.Member_ID) > 1;

SELECT m.MembershipType, MIN(p.Amount) AS MinPay, MAX(p.Amount) AS MaxPay
FROM Payment p
JOIN Member m ON p.MemberID = m.Member_ID
GROUP BY m.MembershipType;

SELECT wp.Name, wp.Goal
FROM WorkoutPlan wp
WHERE EXISTS (
  SELECT 1
  FROM Trainer t
  JOIN WorkoutClass wc ON t.Trainer_ID = wc.Class_ID
  WHERE wp.Intensity = 'High'
);

SELECT m.FirstName, f.Name AS Facility, f.Capacity
FROM Member m
JOIN Member_Facility mf ON m.Member_ID = mf.Member_ID
JOIN Facility f ON mf.Facility_ID = f.Facility_ID
ORDER BY f.Capacity DESC;


SELECT t.FirstName, e.Name AS Equipment, f.Location
FROM Trainer t
JOIN Trainer_Equipment te ON t.Trainer_ID = te.Trainer_ID
JOIN Equipment e ON te.Equip_ID = e.Equip_ID
JOIN Facility f ON e.Location = f.Name;



