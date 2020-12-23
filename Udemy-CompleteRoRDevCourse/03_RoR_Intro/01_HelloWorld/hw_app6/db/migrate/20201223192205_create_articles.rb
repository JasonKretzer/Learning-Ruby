# frozen_string_literal: true

# the CreateArticles class
class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :string
      t.text :description

      t.timestamps
    end
  end
end
