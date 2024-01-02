class AddSystemToGames < ActiveRecord::Migration[7.1]
  def change
    add_reference :games, :system, foreign_key: true
  end
end
