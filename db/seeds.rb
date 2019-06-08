# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Entry.create "title" => "Submitted a Rails Girls application", "date" => Date.new(2014, 2, 1), "contents" => "Just submitted an application to a Rails Girls workshop. Can’t wait to see whether I’ll get in!"
Entry.create "title" => "Got in!", "date" => Date.new(2014, 2, 15), "contents" => "Received an email that my application got accepted! I’ll be at a RG workshop next week!"
Entry.create "title" => "The first day starts…", "date" => Date.new(2014, 2, 22), "contents" => "Today is the first day of the Rails Girls workshop. My coach is quite strange but it seems we all have Rails installed now and can start learning."

Entry.update_all(author: "Monika")

