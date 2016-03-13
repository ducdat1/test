class CreateTest < ActiveRecord::Migration
  # def change
  #   create_table :tests do |t|
  #     t.string :name
  #   end
  # end
  def up
    create_table :tests do |t|
      t.string :name
      t.string :address
    end
  end
  def down
    drop_table :tests
  end
end
