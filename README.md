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
Over a third of employees are at retirement age. can create massive gaps. will need to prepare for leadership and regular employee hiring. could potentially restructure or shrink some departments, but with current numbers, if want to keep same numbers, will need to hire 133,776 new people. if wanting to promote from within, not enough qualified mentors from current queries. may need to expand what counts as qualified. expanding by birthdate by two days increases the mentor pool by over 30,000. if wanting to tackle specifically the retirements in dev and sales, a query can be created to pull those individuals specifically. can then speak with managers to decide if these positions can be streamlined or poll these potential mentors.
