# Pewlett-Hackard Analysis
## Overview
#### 
Pewlett-Hackard managers recently requested that employee data be uploaded to Postgres tables in order to look through the data. During this process, it was noticed that a large portion of employees are at retiring age within the company. New tables were created based on manager requests to narrow down the data. Using different joins and queries between the initially created tables, it is clear that there will be a "silver tsunami" that will need to be addressed. New queries were formed, tables created, and results printed to csv files in order to assist managers with decisions that will need to be made such as mentorship plan for those leaving.
## Results
####
Below are the results from the requested queries. 
  * Pewlett-Hackard employs over 300,000 individuals with 133,776 of those employees at retirement age. 
  * Amongst the potentially retiring employees, 57,668 employees are in senior positions. 
  * Of the senior positions retiring, the sales department and development deapartment will be the most heavily affected. 
![retiring_titles](https://github.com/victoriaguille/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.PNG)
  * Of the retiring employees, only 1,549 have been selected for mentorship eligibilty per the below table. 
![mentorship_eligibilty](https://github.com/victoriaguille/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibilty.PNG)

## Summary
#### 
Over a third of the employees at Pewlett-Hackard are at retirement age. Once individuals begin retiring, it will create a massive gap in both leadership and departments. Several actions will need to be taken to prepare for these gaps in time with fewer employees. Not all 133,776 employees will return at once, but the "silver tsunami" will come in waves. One of the suggestions offered by management to ease these growing pains was a mentorship program. This mentorship program would have eligible mentors drop to part time employment to begin training their replacements. While this plan is soud in theory, there are not nearly enough retirement-ready employees in the departments to mentor incoming employees. With the original query outlined by management, only 1,549 are eligible to become mentors if they agree. If the company does not shrink or restructure the departments, there will not be close to enough mentors for the 133,776 new employees. If Pewlett-Hackard wants to continue with the mentorship plan to tackle the "silver tsunami," the qualifications may need to be broadened. One way to increase the pool would be to increase the age bracket. The following query increases the birth date of mentors by two years. 
![increased_mentors](https://github.com/victoriaguille/Pewlett-Hackard-Analysis/blob/main/Queries/increased_mentors.PNG)
####
The increased age bracket suggested in the query brings the pool of mentors up to 30,000. These employees could potentially be given incentives to participate in the mentorship program as they are within the retirement age bracket. It also provides more diversity in the departments that would have the options of mentors. However, focusing purely on the mentorship program may not be enough to prepare for the "silver tsunami."

When originally looking at the retiring_titles.csv file, the Senior Staff and Engineer positions have the highest retirement aged employees by the thousands. These two positions are within two departments: the sales and developement departments. These two departments will be the hardest hit when employees begin to retire. Performing a query and join to pull data only for the retiring sales and developement employees creates the below table.
####
![sales_dev_mentors](https://github.com/victoriaguille/Pewlett-Hackard-Analysis/blob/main/Data/sales_dev_mentors.PNG)
####
This new table in the Postgres database for Pewlett-Hackard houses the employee list that would potentially be available as mentors using the increased birth date range as previously suggested. This list will allow the managers to see who will be leaving from their departments. The managers could potentially poll select employees for restructuring or streamlining of the departments to attempt to lower the amount of people that will need to be replaced when the "silver tsunami" begins.
