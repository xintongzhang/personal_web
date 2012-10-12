class CreateOpenposts < ActiveRecord::Migration
  def change
    create_table :openposts do |t|
      t.string :content
      t.integer :like
      t.integer :user_id

      t.timestamps
    end
    add_index :openposts, [:user_id, :created_at]
  end
end
