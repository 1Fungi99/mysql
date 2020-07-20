<h1>MySQL</h1>

There are two SQL exercises to complete.

- Exercise 1 : SQL querying
- Exercise 2 : SQL Database Modeling

The instructions for Exercise 1 can be found in this <code>README.md</code> file.

For Exercise 2, please refer to the <code>data-modeling.md</code> file.

**************
Using a SQL Interface (GUI or CLI), connect to the following [AWS RDS](https://aws.amazon.com/rds/) instance : 

<code>tekcamp01.crmocoybkprv.us-east-1.rds.amazonaws.com</code>

The credentials are as follows : 

- username : <code>admin</code>
- password : <code>TEKcamp1</code>

************
After connecting to the MySQL RDS instance, <h2>DO NOT UNDER ANY CIRCUMSTANCES RUN THE FOLLOWING QUERY: </h2>

🔺 💢 💢 💢 💢 💢 💢 💢 💢💢 💢 💢 💢 🔺 

<code> DROP DATABASE students;</code>

🔺 💢 💢 💢 💢 💢 💢 💢 💢💢 💢 💢 💢 🔺 
*************

Once logged into the RDS instance do the following:
   
1. Take a look at the tables in the <code>students</code> database.  In the <code>tekcamp.sql</code> file, write a sql comment mentioning the name of the original sql database and any tables that currently exist in the database.
   
2. Create **your own** students database.  Name the database in the following format : <code>tc1-&lt;firstname-lastname&gt;-</code>.  
   
3. Create a table on **your personal copy** of the students database.  Call the table <code>tekcampers</code>.
   
4. **Transfer** over all the data **UNMODIFIED** from <code>tc1</code> table of the original <code>students</code> database.  
  **Note that you may need to research how to transfer data from one table to another in MySQL.**

4. You should see that there are a number of students that are missing from the original list of students in the students database.  There are a total of 35 registered students @ TEKcamp.  Find out the missing students and add them to the <code>tekcampers</code> table.  Find out the necessary information missing from those students and add them to your <code>tekcampers</code> table.
   
5. There may be records of students that are not part of TEKcamp or are no longer part of TEKcamp.  Remove those records from your <code>tekcampers</code> table.  
   
6. You may have noticed that the data in the table is not quite accurate.  Put the gender data in the appropriate column, and fix any incorrect entries.  For the education field, reach out to your fellow tekcampers to find their educational background and update your table accordingly.  If they do not give permission or don't feel comfortable sharing their educational background, put <code>NULL</code> as the value for that particular record.
   
7. Perform SQL queries on the <code>tekcampers</code> table that returns data that show the following:
   
   1. Students whose last names are longer than 7 characters
   2. Alphabatized by student's first name
   3. Alphabatized by student's last name
   4. Students that are male
   5. Students that are female
   6. Students that have a Masters degree
   7. Students that have a Bachelors degree
   8. Students that have an Associate degree
   9. Students that don't currently have a Higher Education Degree

8. Create another table in YOUR database.  The table name should follow the following format: <code>ta-&lt;ta-name&gt;</code>.  In this table, only put those students that are part of your TA team.  You may use any method to add the data to this table, whether it is manual entry, subquery, or some other method.

9.  Create another table in YOUR database.  Call the table:  <code>hobbies</code>.  Insert a set of hobbies into this table.  It may be useful to ask your TA team about various hobbies that can be used as data for this table.  Make sure each hobby record is tied to a student from your <code>tekcampers</code> table.
   
10. Once the hobbies table has been created and populated, create an aggregate table of every student in your TA team being matched with the hobby they like.  Take a screen shot of this table after the successful query and save the screen shot file as a <code>.jpg</code> or <code>.png</code> file.
     
11. All the student data needs an additional field, <code>bootcamp</code>.  This field represents a previous bootcamp the student has attended prior to TEKcamp.  Modify the table to add this field to the <code>tc1-&lt;firstname-lastname&gt;-</code> table you have already created.
   
12.  Add the <code>bootcamp</code> field / column to your <code>ta-&lt;ta-name&gt;</code> table as well.

*************

<h3>Make sure you document all of the queries you wrote for the above tasks in the <code>tekcamp.sql</code> file.  </h3>

*************

<h1> Bonus </h1>

Create a new cloud managed relational database instance powered by MySQL.  Some examples are : 

- [Amazon Relational Database Service (RDS)](https://aws.amazon.com/rds/)
- [Digital Ocean's Managed Database](https://www.digitalocean.com/products/managed-databases/)
- [Azure Database for MySQL](https://azure.microsoft.com/en-us/services/mysql/)
- [Google Cloud SQL](https://cloud.google.com/sql)
- [IBM Compose for MySQL](https://cloud.ibm.com/catalog/services/compose-for-mysql)
- [Oracle MySQL Database Service](https://www.oracle.com/mysql/#:~:text=Oracle%20MySQL%20Database%20Service%20is,supported%20by%20the%20MySQL%20team.)

Do the above exercise on your own managed cloud database instance.  Be sure to add the URL to your instance here on this README.

Create another <code>.sql</code> "script" file that shows all the queries that were performed to accomplish this task.  You should name the file according to the cloud provider you selected for this task.  For example, if you went with AWS, you can name the file :  <code>aws-rds.sql</code> for example.  

Before the actual queries, add some comments at the top of the sql file that describe some of the steps you took to configure the managed cloud database instance.  Also in these comments, explain the reasoning why you chose that particular cloud provider to do this bonus task.

Also, come up with a way to display all the data that you have stored on your instance.  A recommendation would be to create a SQL script file that returns all the data from your cloud database instance.  Be sure to add appropriate instructions to the sql file to properly get the data to verify your eligibility for the bonus.

********************************
## Git Instructions
- [ ] Create a template copy of this repository by clicking : "Use this template"
- [ ] Name the repository the same name as the master template repository.  
- [ ] Add your TA as collaborator
- [ ] Clone YOUR repo to your local computer
- [ ] Create a new branch: <code>git checkout -b `<firstName-lastName>`</code>.
- [ ] Implement the project on your newly created `<firstName-lastName>` branch, committing changes regularly.
- [ ] Push all of your commits: <code>git push origin `<firstName-lastName>`</code>.
- [ ] When ready for your TA to review, open a Pull Request (PR) and add your TA as a collaborator.

**************************************************
## TEKacademy Submission

- [ ] Submit the exercise or the presentation feedback sheet provided by your TA in the [TEKacademy portal](https://bit.ly/TEKacademy)
  
- [ ] Download & Complete the [Exercise Evaluation Form](https://bit.ly/TEKacademy)
  
- [ ] Upload the form in [TEKacademy](https://bit.ly/TEKacademy)