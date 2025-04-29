# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

puts "Companies: #{Company.all.count}"
puts "Contact: #{Contact.all.count}"

apple = Company.find_by{("name" => "Apple")}
p apple

# - Insert and read contact data for companies in the database
contact = Contact.new
contact["First_Name"] = "Tim"
contact["Last_Name"] = "Cook"
contact["Email"] = "tim@apple.com"
contact["Company_ID"] = apple["id"]
contact.save

contact = Contact.new
contact["First_Name"] = "Steve"
contact["Last_Name"] = "Jobs"
contact["Email"] = "jobs@apple.com"
contact.save


# 1. insert new rows in the contacts table with relationship to a company

# 2. How many contacts work at Apple?

# 3. What is the full name of each contact who works at Apple?
