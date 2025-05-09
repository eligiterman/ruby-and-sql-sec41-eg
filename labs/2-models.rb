# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesperson = Salesperson.new
new_salesperson["First_Name"] = "Eli"
new_salesperson["Last_Name"] = "Giterman"
new_salesperson["Email"] = "eli.giterman@kellogg.northwestern.edu"
new_salesperson.save
# p new_salesperson

new_salesperson = Salesperson.new
new_salesperson["First_Name"] = "Todd"
new_salesperson["Last_Name"] = "Giterman"
new_salesperson["Email"] = "toddgiterman@gmail.com"
new_salesperson.save
# p new_salesperson

# 3. write code to display how many salespeople rows are in the database
no_of_salespeople = Salesperson.all.count
puts "Salespeople: #{no_of_salespeople}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
dad = Salesperson.find_by({"First_Name" => "Todd"})
dad["First_Name"] = "Toddfather"
# p dad

# CHALLENGE:
# 5. write code to display each salesperson's full name
salespeople = Salesperson.all
for person in salespeople
    p person["First_Name"] + " " + person["Last_Name"]
    first_name = person["First_Name"]
    last_name = person["Last_Name"]
    puts "#{first_name} #{last_name}"
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
