# Notes for the RoR Introduction

## MVC

_Below is not necessarily RoR specific nor is necessarily the full definitions but are summaries from the Udemy course.

### Model

Model are objects in your application that typically have a database table backing them.

### View

What the user sees -- html, css, javascript.  Ruby specific will be not just html but html.erb files which has embeddd ruby code in them.

### Controller

Manages logic and flow of the application.

---

## Folder Structure 

**NOTE** This is mainly for Rails 6 but notes are made where there are differences with Rails 5.

### app/

**assets** - static images and stylesheets

**assets/stylesheets** - application.css is a manifest file that makes all css in this folder accessible to the application. Are imported in the views/layouts. The following link in an html.erb file references back to the application.css file.

    <%= stylesheet_link_tag 'application' %>

NOTE: In Rails 5, there is also a *assets/javascript* folder here.

**channels/application_cable** Realtime communication -- like chats or notifications.

**controllers** Where all controllers for the application are housed. All other controller subclass the ApplicationController class.

**helpers** Helper files to help with our views

**javascript** Main javascript folder for the application.  packs folder contains application.js which is the manifest file that makes all javascript in this folder accessible to the application. Are imported in the views/layouts. The following link in an html.erb file references back to the application.js file.

    <%= javascript_pack_tag 'application' %>

**models** Where all the models for the application are stored.  Contains an application_record.rb from which all models with inherit.

**views/layout** Where all the views for the application are stored. Contains application.html.erb. This file serves as the outer template for all views in the application.  Inside the body tag, is where the other views are rendered.

---

### bin/

App specific binary files.

---

### config

App specific configuration files such as for routes, credentials, etc.

**environments** environment specific configuration for different levels of deployment: development -> test -> production.

---

### db

This is where the development and test databases are housed.  SQLite is the default database. db also contains seeds, migration, and schema files for the database.

---

### Top Level Files

**Gemfile** A list of all gems used in the application. You can add gems to this file and run:

    bundle install

That will install the gems and create a Gemfile.lock file which saves all the gems and their versions that were installed.

**package.json** A list of all the javascript packages and dependencies used in the application. This file is used by yarn to install.
