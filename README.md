# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

# Active Record is the interface that Rails gives you between the database and your application.

# Active Record is, to put it inelegantly, the gem that takes care of all the database stuff. It’s known as an “ORM”.

=begin
ORM stands for Object-Relational-Mapping. It basically means that Active Record takes data which is stored in a
database table using rows and columns, which needs to be modified or retrieved by writing SQL statements
(if you’re using a SQL database), and it lets you interact with that data as though it was a normal Ruby object.

So if I want to get an array containing a listing of all the users, instead of writing code to initiate a
connection to the database, then doing some sort of SELECT \* FROM users query, and converting those results into
an array, I can just type "User.all" and "Active Record" gives me that array filled with User objects that
I can play with as I’d like. Wow!

Even more impressive, it doesn’t really matter which type of database you’re using
(as long as you’ve set up the config/database.yml file properly), Active Record smooths out all the differences
between those databases for you so you don’t have to think about it. You focus on writing code for your application

## MIGRATIONS

What Are They?
So what’s a migration? A migration is basically a script that tells Rails how you want to set up or
change a database. It’s the other part of Active Record magic that allows you to avoid manually going in
and writing SQL code to create your database table. You just specify the correct Ruby method
(like the aptly named create_table) and its parameters and you’re almost good to go.

Migrations are just a script, so how do you tell Rails to run that script and actually execute

the code to create your table and update your database’s schema? By using the \$ rails db:migrate command,
which runs any migrations that haven’t yet been run. Rails knows this because it keeps track of which migrations
have been run (using timestamps) behind the scenes. When you run that command, Rails will execute the
proper SQL code to set up your database table and you can go back to actually building the website.

## REVERSE MIGRATIONS

`$ rails db:rollback`
Let’s say you just migrated to create a new database column but forgot a column to store the user’s email… oops! You can just type \$ rails db:rollback
=end
