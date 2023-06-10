
-- Question 1: Find out how many complaints were received and sent by CFPB on the same day.

SELECT Count(*) as Total_complaints
FROM consumer_complaints
WHERE Date_Received = Date_Sent_to_Company
;

-- Question 2: Get the top 3 products that had complaints received and sent on the same day.

Select Product_Name, Count(*) As Total_Complaints
FROM consumer_complaints
WHERE Date_Received = Date_Sent_to_Company
Group By Product_Name
Order By Total_Complaints Desc
Limit 3;

-- Question 3: Get the top 5 issues received and sent by CFPB on the same day.

Select Issue, Count(*) As Total_Issue
FROM consumer_complaints
WHERE Date_Received = Date_Sent_to_Company
Group By Issue
Order By Total_Issue Desc
Limit 5;

-- Question 4: Get the top 5 companies targeted that the complaints were received
-- and sent by CFPB on the same day

Select Company, Count(*) As Top_5_Companies
FROM consumer_complaints
WHERE Date_Received = Date_Sent_to_Company
Group By Company
Order By Top_5_Companies Desc
Limit 5;


--  Question 5: Get the top 3 companies with the invest numbver of complaints.

Select Company, Count(*) As Top_3_Companies
FROM consumer_complaints
Group By Company
Order By Top_3_Companies Desc
Limit 3;

-- Question 6: List the two dates CFPB had the most issues received

Select Date_Received, Count(*) As Most_Issues_recieved
FROM consumer_complaints
Group By Date_Received
Order By Most_Issues_recieved Desc
Limit 2;

-- Question 7: List the two dates CFPB had the Lowest number of issues received

Select Date_Received, Count(*) As Lowest_Issues_recieved
FROM consumer_complaints
Group By Date_Received
Order By Lowest_Issues_recieved Asc
Limit 2;

-- Question 8: Which mode of communication had the most complaints submitted with?

Select Submitted_via, Count(*) As Mode_of_Communication
FROM consumer_complaints
Group By Submitted_via
Order By Mode_of_Communication desc
Limit 1;

-- Question 9: List two states with the most complaints recieved by CFPB.

Select StateName, Count(*) As Most_Complaint_recieved
FROM consumer_complaints
Group By StateName
Order By Most_Complaint_recieved desc
Limit 2;

-- Question 10: Which state had the most complaints received as regards
-- "students' loans" in the product name field.

Select StateName, Product_Name, Count(*) As Most_Complaint_recieved
FROM consumer_complaints
Where Product_Name = 'Student loan'
Group By StateName
Order By Most_Complaint_recieved desc
Limit 1;

-- Question 11: List two companies having the most consumer disputed as "yes".

Select Company, Consumer_Disputed, Count(*) As Most_Consumer_Dispute
FROM consumer_complaints
Where Consumer_Disputed = 'Yes'
Group By Company
Order By Most_Consumer_Dispute desc
Limit 10;
