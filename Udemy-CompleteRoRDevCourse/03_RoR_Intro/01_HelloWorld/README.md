# Basic Hello World App

## Objective

The objective is to create a running rails app and get something on the screen as quickly as possible.

## Notes Before Beginning

If you installed Rubocop the way I did, please note that it does not like the way that rails generates ruby files.  Rails does not by default put the

    # frozen_string_literal: true

line at the top of the files it makes.  So, if you open any of them and save Rubocop will flag it.

Another thing Rubocop does with the generated files is to flag the first line with a warning about not having a carriage return at the end of the line.  To fix, I had to cut the contents of the file.  Delete the file.  Create the file. Paste the contents back into the file and save.

## Application Creation

    rails new hw_app6

This will create the rails app called hw_app6.  I put the 6 at the end to denote it was created using Rails 6.

## Root Route

This is the route the app goes to by default when accessing the base url.

* Edit the config/routes.rb file
* Delete the comment
