# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

case Rails.env
when 'development'
  # development-specific seeds ...
  # (anything you need to interactively play around with in the rails console)

when 'test'
  (1..100).each do |index|
    member = Member.create(first_name: "First Name #{index}", last_name: "Last Name #{index}")
    member.headers.create(tag: "H1", header: "Expert in #{index}-Things")
  end

  # TODO complete test data for expert friend searcher, need lots of data.
    
when 'production'
  # production seeds (if any) ...

end
