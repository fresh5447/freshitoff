class AddListstoTodos < ActiveRecord::Migration
 def change
    create_table :lists do |t|
      t.references :user, index: true
      t.string :name

      t.timestamps
    end
  end
end
