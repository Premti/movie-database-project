class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
