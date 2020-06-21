class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :middle_name
      t.text :username
      t.text :email
      t.text :phone
      t.text :address1
      t.text :address2
      t.text :address3
      t.text :address_city
      t.text :address_state
      t.text :address_zip
      t.text :age
      t.text :weight
      t.text :height
      t.text :eyes_color
      t.text :hair_color
      t.text :description
      t.text :diagnosis

      t.timestamps
    end
  end
end
