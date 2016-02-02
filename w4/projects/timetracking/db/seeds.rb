# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Project.create name: "Ironhack", description: "Ironhack is a"

#Project.create name: "Irofsdf"

#Project.create name: "hack", description: "Iron is love"


22.times do |i|
p = Project.create  name: " Project#{i}", description: "Project#{i}"
	if i.odd?
		p.entries.create(minutes: 10 * i, hours: 1 * i)
	else
		p.entries.create(minutes: i, hours: i)
	end
		#p.entries.create(minutes: 10 * i, hours: 1 * i)
		#p.entries.create(minutes: 10 * i, hours: 1 * i)
		#should allow for multiple things to be put into an entry
end

