/*
Robert Fink

This is an mySQL query to upload a .CSV file into a properly structured database table.
*/

load data infile '../../../home/rwfwcb/project1/project1-users.csv' into table User fields terminated by ',' lines terminated by '\n';
load data infile '../../../home/rwfwcb/project1/project1-products.csv' into table Product fields terminated by ',' lines terminated by '\n';
load data infile '../../../home/rwfwcb/project1/project1-is_a_clothing.csv' into table Clothing fields terminated by ',' lines terminated by '\n';
load data infile '../../../home/rwfwcb/project1/project1-is_a_food.csv' into table Food fields terminated by ',' lines terminated by '\n';
load data infile '../../../home/rwfwcb/project1/project1-buys.csv' into table User_Buys_Product fields terminated by ',' lines terminated by '\n';
