# README


## Getting Started

To install ruby and nodejs run go to the root directory of the project and run

```
asdf install
```

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

To generate integration tests

```
rails generate integration_test site_layout
```

## ActiveRecord

Creates user and saves it to database

```
user = new User(name: "Mp", email: "mp@gmail.com")
user.save
```

Create user and save it to database

```
foo = user.create(name: "Foo", email: "foo@bar.com")
```

Delete the user from the database

```
foo.destroy
```

Returns the user with an id of 1

```
User.find(1)
```

Find User based on specific attributes

```
User.find_by(email: "mp@gmail.com")
```

Other commands

```
User.first
User.all
```

Updating user objects

```
user
user.email = "marklibunao@gmail.com"
user.save
```

Reload object based on the database information

```
user.email
"mplibuao@gmail.com"
user.email = "foobar@gmail.com"
user.reload.email
"mplibuao@gmail.com"
```

Update multiple attributes with `update_attributes`

```
user.update_attributes(name: "The Dude", email: "dude@abides.org")
```

Generating more migrations

```
rails generate migration add_index_to_users_email
```

Run in different environments

```
# Running console in a different environemnt

rails console test
Rails.env
=> "test"
Rails.env.test?
=> true

# Running server and doing migrations in different env

rails s --environment production
rails db:migrate RAILS_ENV=production
```

Reset database

```
rails db:migrate:reset
```
