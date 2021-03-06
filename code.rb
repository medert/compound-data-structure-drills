require 'pry'

people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}

# Write Ruby code to find out the answers to the following questions:

# * How many people are in `people` (excluding children)?
puts "People are in people #{people.size}"

# * What are the names of all the people?
people.each{|k,v| print k +', '}
puts

# * What is the phone number of Alia O'Conner PhD?
puts "\nAlia O'Conner's phone is #{people["Alia O'Conner PhD"]["phone"]}"

# * How many children does Brian Heller have?
puts "\nAlia O'Conner's phone is #{people["Brian Heller"]["children"].size}"

# * What company does Dr. Adela DuBuque work for?
puts "\nDr. Adela DuBuque works for #{people["Dr. Adela DuBuque"]["company"]}"

# * What are the names of the people who have children?
puts "\nPeople that have children: "
people.each do |key,value|
  puts '- ' + key if value["children"] != nil
end

# * What are the names of the people who do not have children?
puts "\nPeople that do not have children: "
people.each do |key,value|
  puts '- ' + key if value["children"] == nil
end

# * What is Brian Heller's child's name?
puts "\nBrian Heller's child's name is #{people["Brian Heller"]["children"].join('')}"

# * What is Maryse Johns' first child's name?
puts "\nMaryse Johns first child's name is #{people["Maryse Johns"]["children"][0]}"

# * Dr. Adela DuBuque just had a baby named Tomas. How would you update the hash for this information?
people["Dr. Adela DuBuque"].merge!("children" =>["Bert"])
puts people

sets_of_people =
[
  {
         "Bernard Feil" => {
             "phone" => "(880) 434-0630",
           "company" => "Maggio Inc",
          "children" => [
              "Nikki"
          ]
      },
          "Ruby Hessel" => {
             "phone" => "1-467-852-4981",
           "company" => "Kemmer Inc",
          "children" => [
              "Sydney"
          ]
      },
          "Savanah Toy" => {
             "phone" => "440-632-0287",
           "company" => "Hudson, Stehr and Lind",
          "children" => [
              "Garth"
          ]
      },
      "Casandra Kemmer" => {
            "phone" => "1-515-759-7470",
          "company" => "Davis, Bernier and Hermann"
      },
             "Edd Rath" => {
            "phone" => "(522) 829-3164",
          "company" => "Mosciski LLC"
      }
  },
  {
         "Dagmar Brakus" => {
             "phone" => "1-881-313-1173",
           "company" => "Mitchell, Schmitt and Haley",
          "children" => [
              "Reuben"
          ]
      },
         "Einar Effertz" => {
            "phone" => "(265) 857-5141",
          "company" => "Pfeffer, Klocko and Von"
      },
      "Dr. Sigrid Nader" => {
             "phone" => "707.762.7870",
           "company" => "Weissnat, Hayes and Dickinson",
          "children" => [
              "Israel",
              "Elyse",
              "Wilfredo"
          ]
      }
  }
]

# Write Ruby code to find out the answers to the following questions:

# * How many people are in the first set of people?
num_of_people = 0
sets_of_people[0].each do |k,v|
  num_of_people += 1
  num_of_people += v["children"].size if v["children"] != nil
end

puts "\nThere are #{num_of_people} people in the first set of people."

# * How many people are in the second set of people?
num_of_people = 0
sets_of_people[1].each do |k,v|
  num_of_people += 1
  num_of_people += v["children"].size if v["children"] != nil
end

puts "\nThere are #{num_of_people} people in the second set of people."

# * What is Ruby Hessel's phone number?
phone = sets_of_people[0]["Ruby Hessel"]["phone"]
puts "\nRuby Hessel's phone number is #{phone}"

# * What are the names of Dr. Sigrid Nader's children?
children = sets_of_people[1]["Dr. Sigrid Nader"]["children"].join(", ")
puts "\nDr. Sigrid Nader's children's name are #{children}."

# * What is Bernard Feil's child's name?
child = sets_of_people[0]["Bernard Feil"]["children"].join(", ")
puts "\nBernard Feil child's name is #{child}."

# * What company does Casandra Kemmer work for?
work = sets_of_people[0]["Casandra Kemmer"]["company"]
puts "\nCasandra Kemmer works at #{work}."

# * Who are all the people in the first set that have an `m` in their Company names?

num_of_people = 0
puts
puts "\nThe people in the first set that have an `m` in their Company names:"
sets_of_people[0].each do |k,v|
  puts k if v["company"].downcase.include?("m")
end
