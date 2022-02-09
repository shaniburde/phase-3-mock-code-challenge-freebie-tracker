puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(dev_id: 1, company_id: 1, item_name: "Google T-shirt", value: 5)
Freebie.create(dev_id: 2, company_id: 2, item_name: "Facebook Hat", value: 10)
Freebie.create(dev_id: 3, company_id: 3, item_name: "Dunder Miflin Mug", value: 15)
Freebie.create(dev_id: 4, company_id: 4, item_name: "Enron Whistle", value: 2)

puts "Seeding done!"
