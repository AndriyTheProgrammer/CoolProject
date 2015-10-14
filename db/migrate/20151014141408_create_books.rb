class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

      t.timestamps null: false
      t.string :title
      t.string :author
      t.string :description
      t.text :book_text
    end
  end
end
