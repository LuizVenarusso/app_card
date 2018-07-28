class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :token
      t.date :admission_date
      t.integer :available_amount

      t.timestamps
    end
  end
end
