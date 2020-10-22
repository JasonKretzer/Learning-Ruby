# RoR-Crash-Course

Based on the Traversy Media video.  <https://www.youtube.com/watch?v=B3Fbujmgo60>

Note that on linux (ubuntu 20.04 for me), run the below command as a normal user.  It will ask for sudo if it needs it.

Also, make sure that libsqlite3-dev is installed before running the command.

* Create foodlog rails application

      rails new foodlog

* Instead of creating models and controller separately, we can use the scaffold command and a bunch of files are created for you.

        rails g scaffold Entry meal_type:string calories:integer proteins:integer carbs:integer fats:integer

* This scaffolds out a model, some views, a controller, the equivalent tests, and some stylesheets

      Running via Spring preloader in process 319019
      invoke  active_record
      create    db/migrate/20201019233733_create_entries.rb
      create    app/models/entry.rb
      invoke    test_unit
      create      test/models/entry_test.rb
      create      test/fixtures/entries.yml
      invoke  resource_route
       route    resources :entries
      invoke  scaffold_controller
      create    app/controllers/entries_controller.rb
      invoke    erb
      create      app/views/entries
      create      app/views/entries/index.html.erb
      create      app/views/entries/edit.html.erb
      create      app/views/entries/show.html.erb
      create      app/views/entries/new.html.erb
      create      app/views/entries/_form.html.erb
      invoke    test_unit
      create      test/controllers/entries_controller_test.rb
      create      test/system/entries_test.rb
      invoke    helper
      create      app/helpers/entries_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/entries/index.json.jbuilder
      create      app/views/entries/show.json.jbuilder
      create      app/views/entries/_entry.json.jbuilder
      invoke  assets
      invoke    scss
      create      app/assets/stylesheets/entries.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.scss

* To populate the database with the model you have to then run the created migration file.

      rails db:migrate

* At a certain point in the video, he slogs through 45 minutes of Bulma css and fiddling with the views.  This would have been great if he had explained the rails pieces he was using. Skipping to adding a new controller.

* Generate a controller called archive with an index method. This creates fewer items than the scaffold -- THANKFULLY.  The scaffold created a lot of cruft in my opinion.

        rails g controller archive index

* Skipped ahead to the basic testing that rails provides and how to call the tests via the commandline.

        rails test test/controllers/entries_controller_test.rb:13

* Skipped further to see how to set up foreign key constraints in the database. It is done similar to how EntityFramework is set up for .NET Core.  (Actually probably the reverse is more accurate.)

I do not recommend this video for anything other than watching on high speed. Not much teaching, just a lot of code thrown at you.