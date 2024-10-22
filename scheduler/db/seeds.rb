# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

if Semester.count == 0
  Semester.create!([
    ["Summer", 2024],
    ["Fall", 2024],
    ["Spring", 2025]
  ].map do |s| 
    {term: s[0], year: s[1]}
  end)
end

if Course.count == 0
  Course.create!([
    ["WEB 1400", "Web Design and Usability", 3],
    ["WEB 1430", "Client side Programming", 3],
    ["WEB 3200", "Dynamic language for the web", 3]
  ].map do |c| 
    {name: c[0], title: c[1], description: "To be added later", credits: c[2]}
  end)
end

if Instructor.count == 0
  Instructor.create!([
    ["W001", "John", "Doe"],
    ["W002", "Jane", "Smith"],
    ["W003", "Amy", "Roberts"]
  ].map do |i| 
    {wno: i[0], first_name: i[1], last_name: i[2], title: "Instructor"}
  end)
end