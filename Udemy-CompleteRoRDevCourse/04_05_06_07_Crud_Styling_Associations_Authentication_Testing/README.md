# Sections 4, 5, 6, 7 -- Alpha Blog

This README picks up after the HelloWorld and BlogSample project directories.  Go back there for previous steps and information.

## Models

Models live in the app/models folder.  They can be manipulated in rails console.

    rails c

### Basic CRUD Operations on Model Table

* create method
* find method
* destroy method

### Other Methods on Model Table

* find(id) -- find the record with the given id
* first -- returns the first record by id
* last -- returns the last record by id
* all -- returns all records in the table

### create VS new VS save

* create -- method to create directly in the table and accepts arguments for the fields
* new -- method to create an in-memory instance object of the Model type which can be saved
* save -- method to save to the underlying table an instance object created by new

## Validations

To enforce valid data entry into the tables, the model class should implement validations.

In the Article model, to ensure the presence of the 'title' and 'description' fields, use the following in the model file.

    validates :title, presence: true
    validates :description, presence: true

If you try to save an object with either/both missing, false will be returned. You can then check the errors with the following which returns an array with the messages:

    article.errors.full_messages

Another validation can be done on length.  Modify the lines to be:

    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }

This is just the basics.  More can be found at [https://guides.rubyonrails.org/active_record_validations.html]

---

**In section 4, the instructor goes into how to set up the articles_controller and views by hand and does not use the files created by the scaffolding we did. As such, there are a few differences.  I will cover the basics of what was presented in section 4 for the routes and forms.  By the end of section 4, the instructor does eventually get to nearly the same code as the scaffolding.**

---

## Routes, Controllers, Actions, and Views

The instructor mimics some of the routes provided by the entry:

    resources :articles

that is located in the routes.rb. He uses the following syntax to add them one at a time.

    resources :articles, only: [:show, :index, :new, :create]
    # resources :articles, only: %i[show index new create] -- SEE SIDE NOTE 1 BELOW FOR DIFFERENCE

Notice the array there.  Those symbols specify ONLY the routes that he wants the resources to define.

**Side Note 1** Rubocop has an opinion on how that symbol array should be written and use %i to specify a symbol array.

Remember these symbols point to methods (actions) that are inside the articles_controller file. I repeat this because when the instructor shows them and builds them by hand, he puts code inside the methods -- though he does not always keep there. However, when you scaffold the Article and these methods (actions) are generated, they are completely empty. The scaffold process takes a shortcut using the **jbuilder** gem in some way to generate files that follow the naming pattern: **\<method\>.json.jbuilder** and they are placed in the same folder with the appropriate views. In this case, that would be:

    app/views/articles/

### Rendering

Regarding the completely empty comment above when discussing the actions in the controller, you may ask yourself _How does the controller know what to render if I am not specifically telling it what to do?_ Remember that rails follows "convention over configuration" -- you will hear that a lot.  This is explained very well with this quote from [https://guides.rubyonrails.org/layouts_and_rendering.html]

> The rule is that if you do not explicitly render something at the end of a controller action, Rails will automatically look for the action_name.html.erb template in the controller's view path and render it.

### Partials

In order to simplify views, one can use the render method inside of a view to tell the view that there is a snippet of code located in another file to be rendered at that location. These snippets are called Partials.

In short, partials allow you break down you views into smaller component parts which makes your views less complex and keeps you from repeating code. For example, the form that is used when creating an article can also be used to edit an article -- they have the same fields. The only real difference is what is called on submit.

To use a partial, simply add a line similar to the following to your view.

    <%= render 'form', article: @article %>

This line will tell rails to render the content that is found in the same directory with the file name "_form.html.erb". Notice the underscore, this tells us and rails that this is a partial.

---

## Forms

Forms can be created special in views using a tag like this:

    <%= form_with(model: article, local: true) do |myform| %>

    ...

    <% end %>

This means lets create a form tag in html and tie it to a model and call it myform. Notice that there is no way to set the "action" for the form here. By default, the form action will be set to a POST to the current page. To set the form action and method, use the url and method helpers.

    <%= form_with url: "/search", method: :get do |form| %>
      <%= form.label :query, "Search for:" %>
      <%= form.text_field :query %>
      <%= form.submit "Search" %>
    <% end %>

Inside the form tags you can then set Then inside the form, you can reference myform inside the erb tags to create fields and other form appropriate html items like this:

    <%= form.label :title %>
    <%= form.text_field :title %>

This creates a text field and a label for the text field.

Back in the articles_controller when accepting parameters that come from a form you should whitelist what is being sent.  This is called "strong parameters" which is a security feature. You specify exactly what parameters you want to accept.

    @article = Article.new(params.require(:article).permit(:title, :description))

For more information,  I am using it as the FIRST place I look for information on forms.
[https://guides.rubyonrails.org/form_helpers.html]

---

## Styling With Bootstrap

### Notes About Javascript Before Starting

First thing to note is that bootstrap does require jquery as a dependency.  In Rails 6 vs 5, javascript is handled differently. In 6, the javascript folder is located under /app. In 5, the folder is named javascripts and is located under /app/assets. The main reason it is this way is that in 6, javascript is handled by webpack via the webpacker gem.  In 5, rails used what is called the "asset pipeline" via sprockets which used the /app/assets folder format with javascripts under it.

In the /app/views/layouts/application.html.erb file, this is the main layout file where other views and partials are rendered.  At the top there are two lines which show the application which link in the stylesheets and javascript file for the app so they are available on every page.

    <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>

The default location for the stylesheets is /app/assets/stylesheets.  The default location for the top level javascript file, which pulls in all other javascript, is in /app/javascript/packs/application.js.

### Installing Bootstrap for Rails 6

A good blog article covers the steps at [https://www.mashrurhossain.com/blog/rails6bootstrap4]

The basics are to

1. Use yarn to add bootstrap, jquery, and popper.js to the app. Note the numbers after bootstrap@ are version numbers and will not represent the latest version.

        yarn add bootstrap@4.3.1 jquery popper.js

2. Add jquery and popper to teh /config/webpack/environment.js file.
        const { environment } = require('@rails/webpacker')
        const webpack = require("webpack")

        environment.plugins.append("Provide", new webpack.ProvidePlugin({
          $: 'jquery',
          jQuery: 'jquery',
          Popper: ['popper.js', 'default']
        }))

        module.exports = environment

3. Import bootstrap into the /app/javascript/packs/application.js file.

        import "bootstrap"

4. Add a bootstrap require to the /app/assets/stylesheets/application.css file. (Place above the other two require lines)

        *= require bootstrap

    **If you created some views via scaffolding, note that there is a /app/assets/stylesheets/scaffolds.scss that will interfere with bootstrap.**  I commented out several parts of the file to help with that.  You can probably delete the whole thing.

5. Next, we can add a /app/assets/stylesheets/custom.css.scss file to override any of the bootstrap settings we wish. Simply add

    @import 'bootstrap/dist/css/bootstrap';

and you can take advantage of the "cascade" to override any bootstrap classes.

### Installing Bootstrap for Rails 5

Very similar to Rails 6.

1. Install the bootstrap and jquery-rails gems by adding them to your Gemfile. (remember about the version numbers)

        gem 'bootstrap', '~> 4.4.1'
        gem 'jquery-rails'

    and run bundle install.
2. create a /app/assets/stylesheets/custom.css.scss file and import bootstrap.

        @import "bootstrap";

3. Add the require statements to /app/assets/javascripts/application.js file

        //= require jquery3
        //= require popper
        //= require bootstrap

You can then use your custom.css.scss to override any of the bootstrap styles.

---

## Database Associations

Ruby has its own syntax for database concepts.  The basics can be found at [https://guides.rubyonrails.org/association_basics.html].

NOTE: watch your pluralization of field and table names.

* **belongs_to**: a one directional 1:1 relationship. eg. 2 tables, Books and Authors. Books has an author_id so can identify who its author is. The Authors table does not keep a reference to their Books.

* **has_one**: similar to belongs_to but goes in the other direction.

* **has_many**:  similart to the has_one but is a one to many.
