class AddActorIdtoCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :actor_id, :integer 
  end
end
