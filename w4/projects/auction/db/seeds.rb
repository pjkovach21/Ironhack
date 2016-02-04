
user = User.create name: " user:1", email: " email: user1@pete.co"
user.save



user.products.create(title: " Product: 1", email: " descrition: blah", deadline: DateTime.now)
user.products.create(title: " Product: 2", email: " descrition: blah blah", deadline: DateTime.now)
user.products.create(title: " Product: 3", email: " descrition: blah blah BLah", deadline: DateTime.now)