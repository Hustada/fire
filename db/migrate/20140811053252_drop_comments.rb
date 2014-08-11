class DropComments < ActiveRecord::Migration
  def up
    drop_table :comments
  end

  def down
    create_table :comments do |t|
      t.text :body
      t.integer :user_id, :pit_id
    end
      t.timestamps
  end
end
