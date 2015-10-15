class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|

      t.timestamps null: false
      t.boolean 'is_idiot'
      t.integer 'user_id'
    end
  end
end
