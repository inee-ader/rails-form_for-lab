# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
3.times do 
    Student.create(first_name: Faker::Cannabis.strain, last_name: Faker::Beer.brand)
end

3.times do
    SchoolClass.create(title: Faker::Educator.course_name, room_number: rand(1..70))
end
