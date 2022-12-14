SELECT * FROM CHICAGO_CRIME_DATA LIMIT 1;
--List the case number, type of crime and community area for all crimes in community area number 18.
SELECT CASE_NUMBER, PRIMARY_TYPE, CD.COMMUNITY_AREA_NAME
FROM CHICAGO_CRIME_DATA CCD
JOIN CENSUS_DATA CD ON CCD.COMMUNITY_AREA_NUMBER = CD.COMMUNITY_AREA_NUMBER AND CCD.COMMUNITY_AREA_NUMBER = 18;

--List all crimes that took place at a school. Include case number, crime type and community name.
SELECT CASE_NUMBER, PRIMARY_TYPE, CD.COMMUNITY_AREA_NAME
FROM CHICAGO_CRIME_DATA CCD
LEFT JOIN CENSUS_DATA CD ON CCD.COMMUNITY_AREA_NUMBER = CD.COMMUNITY_AREA_NUMBER 
WHERE LOCATION_DESCRIPTION LIKE '%SCHOOL%';

--For the communities of Oakland, Armour Square, Edgewater and CHICAGO list the associated community_area_numbers and the case_numbers.
SELECT CD.COMMUNITY_AREA_NAME, CD.COMMUNITY_AREA_NUMBER, CCD.CASE_NUMBER
FROM CENSUS_DATA CD
LEFT JOIN CHICAGO_CRIME_DATA CCD ON CD.COMMUNITY_AREA_NUMBER = CCD.COMMUNITY_AREA_NUMBER 
WHERE CD.COMMUNITY_AREA_NAME = 'Oakland' 
OR CD.COMMUNITY_AREA_NAME = 'Armour Square' 
OR CD.COMMUNITY_AREA_NAME = 'CHICAGO';
