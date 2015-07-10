class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :reciever_id
      t.integer :sender_id
      t.text :content
      t.timestamps null: false
    end
    add_index :messages, :reciever_id
    add_index :messages, :sender_id
    add_index :messages, [:reciever_id, :sender_id], unique: true
  end
end