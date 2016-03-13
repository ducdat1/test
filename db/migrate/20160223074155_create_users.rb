class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest

      t.timestamps null: false
    end
  end
  # def up
  # 	create_table :users do |t|
  # 		t.string :name
  # 		t.string :password_digest
  # 		t.timestamps null: false 
  # 	end
  # end
  # def down
  # 	create_table :users do |t|
  # 		t.string :name
  # 		t.string :password
  # 		t.string :confirm
  # 		t.timestamps null: false 
  # 	end
  # end
end
