class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :synopsis
      t.integer :release_year

      t.timestamps
    end
  end
end
