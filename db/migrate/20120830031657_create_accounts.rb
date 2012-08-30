class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :typ
      t.integer :user_id
      t.string :number

      t.timestamps
    end
  end
end
