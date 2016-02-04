
user = User.create name: " user:1", email: " email: user1@pete.co"
user.save



user.products.create(title: " Product: 1",  description: "blah", deadline: DateTime.now)
user.products.create(title: " Product: 2",  description: "blah blah", deadline: DateTime.now)
user.products.create(title: " Product: 3",  description: "blah blah BLah", deadline: DateTime.now)