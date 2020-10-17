# Simple Ruby on Rails API

Based on the Traversy Media video.  <https://www.youtube.com/watch?v=QojnRc7SS9o>

Note that on linux, run the below command as a normal user.  It will ask for sudo if it needs it.

Also, make sure that libsqlite3-dev is installed before running the command.

* myarticles api created with

      rails new myarticles --api

* We can create database models using rails.  It will create a model file "app/models/article.rb".  Also, a database migration file is created in "db/migrate".

      rails g model Article title:string body:text

* To populate the database with the model you have to then run the created migration file.

      rails db:migrate
