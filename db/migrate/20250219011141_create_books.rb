# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.boolean :available

      t.timestamps
    end
    add_index :books, :isbn
  end
end
