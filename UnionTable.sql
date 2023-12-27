SELECT h.Name, h.Birthday, h.Decrees, p.TypeID, a.AgeMonth 
FROM hoss h
LEFT JOIN animkids a ON a.Name = h.Name
LEFT JOIN packan p ON p.Id = h.TypeID
UNION 
SELECT d.Name, d.Birthday, d.Decrees, p.TypeID, a.AgeMonth 
FROM donkeys d 
LEFT JOIN animkids a ON a.Name = d.Name
LEFT JOIN packan p ON p.Id = d.TypeID
UNION
SELECT c.Name, c.Birthday, c.Decrees, pt.TypeID, a.AgeMonth  
FROM meows c
LEFT JOIN animkids a ON a.Name = c.Name
LEFT JOIN pets pt ON pt.Id = c.TypeID
UNION
SELECT d.Name, d.Birthday, d.Commands, pt.TypeID, a.AgeMonth h 
FROM woofs d
LEFT JOIN animkids a ON a.Name = d.Name
LEFT JOIN pets pt ON pt.Id = d.TypeID
UNION
SELECT hm.Name, hm.Birthday, hm.Commands, pt.TypeID, a.AgeMonth  
FROM hams hm
LEFT JOIN animkids a ON a.Name = hm.Name
LEFT JOIN pets pt ON pt.Id = hm.TupeID;