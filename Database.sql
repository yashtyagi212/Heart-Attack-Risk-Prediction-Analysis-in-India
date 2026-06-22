CREATE DATABASE heart_attack_analysis;
USE heart_attack_analysis;
SELECT * FROM heart_attack_final;

SELECT COUNT(*)
FROM heart_attack_final;

SELECT COUNT(*) AS Total_Patients
FROM heart_attack_final;

SELECT COUNT(*) AS High_Risk_Patients
FROM heart_attack_final
WHERE Heart_Attack_Risk = 1;

SELECT Gender,
       COUNT(*) AS Total_Patients,
       SUM(Heart_Attack_Risk) AS High_Risk
FROM heart_attack_final
GROUP BY Gender;

SELECT State_Name,
       COUNT(*) AS High_Risk_Patients
FROM heart_attack_final
WHERE Heart_Attack_Risk = 1
GROUP BY State_Name
ORDER BY High_Risk_Patients DESC;

SELECT Smoking,
       ROUND(AVG(Heart_Attack_Risk)*100,2) AS Risk_Percentage
FROM heart_attack_final
GROUP BY Smoking;


SELECT Diabetes,
       ROUND(AVG(Heart_Attack_Risk)*100,2) AS Risk_Percentage
FROM heart_attack_final
GROUP BY Diabetes;

SELECT Heart_Attack_Risk,
       ROUND(AVG(Cholesterol_Level),2) AS Avg_Cholesterol
FROM heart_attack_final
GROUP BY Heart_Attack_Risk;


SELECT State_Name,
       COUNT(*) AS High_Risk_Patients
FROM heart_attack_final
WHERE Heart_Attack_Risk = 1
GROUP BY State_Name
ORDER BY High_Risk_Patients DESC
LIMIT 10;