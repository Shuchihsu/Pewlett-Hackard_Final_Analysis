# Pewlett-Hackard_challenge

## Overview of the analysis
   Pewlett-Hackard realize they are going to have many senior employees     
   retire in near future. We use SQL to analyze the six csv files (employees, department managers, department employees, departments, titles, and salaries) to find out who is close to the retirement. Then we can prepare to have these position openings in the next couple years or create a mentorship program to keep the senior managers to continue to help out the company.
   

### Results
       We have created four csv files to demonstrate what positions 
       (titles) and the amount might be open in the future:
* Retirement_titles: in this file, we can see there are 133,776 employees with their names, title and start date of their employment in this company. 133,776 is a huge number and we understand there might be some employees with a couple or several titles. So we create a another table to eliminate the duplicates.
* unique_titles: this table we use DISTINCT ON this statement to eliminate the duplicate records for each employees from the previous table (Retirement_titles). Then we see the total count on this table drop down to 72,458. This number is almost half of the last table.
* Retiring_titles: we want to know how many exactly for each title we will have opening. So we create a table to find the count for each title from “unique_titles.
* mentorship_eligibilty: finally, we use WHERE statement to sort out the senior employees (birth year:1965) and create this mentorship list. We have 1940 employees on the list.


###Summary
	
	We have around 72,458 employees who might retire in the next five to ten years and we have around 1940 employees, if they are willing to, could help after they retire. Ideally, if we have all the retirees to help, we still see the ratio 1:30 in this project (one mentor with 30 new employees). The idea is the retirees are taking part-time positions. My recommendation is also to create the new employees training program with part-time positions for now or internship programs in place in order to fill in the near future demands. 
