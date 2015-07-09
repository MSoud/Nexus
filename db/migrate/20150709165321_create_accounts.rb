class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.timestamps null: false
    end
    add_index :accounts, :email, unique: true
  end
end
