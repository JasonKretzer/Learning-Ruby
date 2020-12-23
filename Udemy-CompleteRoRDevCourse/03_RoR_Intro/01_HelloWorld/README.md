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
* Put in the a line like the one below

    root 'pages#home'

This will set the root of the url to home "action" (which is just a method in a controller) in the pages_controller.rb file.  The next section details generating a controller.  In the hw_app6 app, the pages#home method is blank. So, rails renders the default "view" for the home action in app/views/pages/home.html.erb.

## Generating a Controller

You generate a controller for objects/concepts which require some bit of logic to handle.  For example, to create a controller named "other" :

    rails generate controller other

When you generate a controller, the following is done:

    create  app/controllers/other_controller.rb
    invoke  erb
    create    app/views/other
    invoke  test_unit
    create    test/controllers/other_controller_test.rb
    invoke  helper
    create    app/helpers/other_helper.rb
    invoke    test_unit
    invoke  assets
    invoke    scss
    create      app/assets/stylesheets/other.scss

Notice that it creates not only the controller class but also a view, a test file, a helper file, and a specific stylesheet.  

## Actions in a Controller

Like with the root route, you can set other routes to specific actions inside of controllers.  Using the "about" action as an example, we can cover how a non-root action works.  In the config/routes.rb file, we added a line

    get 'about', to: 'pages#about'

This line translates to, when a GET request comes to a url which ends in /about such as with [http://localhost:3000/about], then send the request to the about method in the pages controller.

Leaving the action method body blank will have it render the contents of the app/layout/pages/about.html.erb view file.

## Scaffolding Objects

If you want to generate a database model along with your controller, you can use the scaffold command.  Note: this creates a lot of different files some of which you may or may not need.  For hw_app6, we are generating an Article object.

    rails generate scaffold Article title: string description:text 

This command will generate a articles_controller, a number of routes, and a number of views to match the routes. It will also generate a model in app/models/article.rb as well as a database migration in db/migrate which will generate the database table when it is run.  Here is a list of all that is done:

    invoke  active_record
    create    db/migrate/20201223192205_create_articles.rb
    create    app/models/article.rb
    invoke    test_unit
    create      test/models/article_test.rb
    create      test/fixtures/articles.yml
    invoke  resource_route
    route    resources :articles
    invoke  scaffold_controller
    create    app/controllers/articles_controller.rb
    invoke    erb
    create      app/views/articles
    create      app/views/articles/index.html.erb
    create      app/views/articles/edit.html.erb
    create      app/views/articles/show.html.erb
    create      app/views/articles/new.html.erb
    create      app/views/articles/_form.html.erb
    invoke    test_unit
    create      test/controllers/articles_controller_test.rb
    create      test/system/articles_test.rb
    invoke    helper
    create      app/helpers/articles_helper.rb
    invoke      test_unit
    invoke    jbuilder
    create      app/views/articles/index.json.jbuilder
    create      app/views/articles/show.json.jbuilder
    create      app/views/articles/_article.json.jbuilder
    invoke  assets
    invoke    scss
    create      app/assets/stylesheets/articles.scss
    invoke  scss
    create    app/assets/stylesheets/scaffolds.scss

Now that the database migration is ready, we can run it using:

    rails db:migrate

This command creates the sqlite database with the table in it as well as the schema.rb file.  
