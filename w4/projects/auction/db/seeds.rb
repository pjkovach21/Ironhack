5.times do |num|
	u = User.create name: " user: person#{num}", email: " email: #{num}@pete.co"
end

5.times do |num|
	p = Product.create title: " Product: #{num}", email: " descrition: blah blah", deadline: DateTime.parse
end