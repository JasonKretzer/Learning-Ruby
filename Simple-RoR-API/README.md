# Simple Ruby on Rails API

Based on the Traversy Media video.  <https://www.youtube.com/watch?v=QojnRc7SS9o>

Note that on linux (ubuntu 20.04 for me), run the below command as a normal user.  It will ask for sudo if it needs it.

Also, make sure that libsqlite3-dev is installed before running the command.

* myarticles api created with

      rails new myarticles --api

* We can create database models using rails.  It will create a model file "app/models/article.rb".  Also, a database migration file is created in "db/migrate".

      rails g model Article title:string body:text

* To add required fields, etc to your model, make the changes in the models/article.rb file.

        class Article < ApplicationRecord
            validates :title, presence: true
            validates :body, presence: true
        end

* To populate the database with the model you have to then run the created migration file.

      rails db:migrate

* Installed the "Faker" gem to add fake data.  I added it to the group.development in the Gemfile first. To install files this way on linux, I had to first install the ruby-bundler.  Finally, installed Faker.

      bundle install

* To seed the database with data using Faker, you use the db/seeds.rb file.
* After adding code to the seeds.db file, you can make rails use it to seed the database.

      rails db:seed

* Now that the database has data, add routes in the config/routes.rb

      Rails.application.routes.draw do
          namespace 'api' do
              namespace 'v1' do
                  resources :articles
              end
          end
      end
* Once the routes exist, you can use a command to view all of the default routes.

      rails routes

* Then we can define the routes by putting them in a controller file.  Since our route url has a suffix of api/v1/articles, we have nest the directory structure and the modules in that file.  Create api/v1 diretories under the app/controllers/.  Then create the articles_controller.rb in the v1 directory.

* The header for the file should show the namespace structure for the controller and extend the ApplicationController.

      module Api
          module V1
            class ArticlesController < ApplicationController

* Using the names of routes that were listed in the rails routes command, define functions for whatever endpoints you need.  I defined:

  * index: GET all articles
  * create: POST a new Article object
  * show: GET a single article based on Id
  * update: PUT an Id and update a record
  * destroy: DELETE an article based on Id
