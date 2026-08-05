USE HazMat_Risk_Analysis;

-- Question 1:
-- Which location has the highest number of HazMat incidents?

SELECT
    location,
    COUNT(*) AS incident_count
FROM incidents
GROUP BY location
ORDER BY incident_count DESC;



-- Question 2: Root Cause Analysis
-- What are the most common root causes of HazMat incidents?
-- =====================================

SELECT
    root_cause,
    COUNT(*) AS frequency
FROM incidents
GROUP BY root_cause
ORDER BY frequency DESC;


-- Question 3: Severity Analysis
-- What is the distribution of incident severity levels?
-- =====================================

SELECT
    severity,
    COUNT(*) AS incident_count
FROM incidents
GROUP BY severity
ORDER BY incident_count DESC;



-- Question 4: Material Type Analysis
-- Which hazardous material types have the highest incident frequency?
-- =====================================

SELECT
    material_type,
    COUNT(*) AS incident_count
FROM incidents
GROUP BY material_type
ORDER BY incident_count DESC;


-- Question 5: Corrective Action Analysis
-- What corrective actions were most frequently implemented?
-- =====================================

SELECT
    corrective_action,
    COUNT(*) AS action_frequency
FROM incidents
GROUP BY corrective_action
ORDER BY action_frequency DESC;


-- Question 6: Monthly Incident Trend
-- How do HazMat incidents change over time?
-- =====================================

SELECT
    YEAR(incident_date) AS incident_year,
    MONTH(incident_date) AS incident_month,
    COUNT(*) AS incident_count
FROM incidents
GROUP BY 
    YEAR(incident_date),
    MONTH(incident_date)
ORDER BY 
    incident_year,
    incident_month;