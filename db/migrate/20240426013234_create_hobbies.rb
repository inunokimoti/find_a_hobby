class CreateHobbies < ActiveRecord::Migration[7.0]
  def change
    create_table :hobbies do |t|
      t.integer :where_id, null: false
      t.integer :category_id, null: false
      t.string :type, null: false
      t.text :text, null: false
      t.integer :cost
      t.integer :count_id
      t.integer :from_id
      t.string :city
      t.references :user, null: false,foreign_key: true
      t.timestamps
    end
  end
end
