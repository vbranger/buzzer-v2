class SetDefaultStateToGames < ActiveRecord::Migration[7.1]
  def change
    change_column_default :games, :state, from: nil, to: 'ready'
  end
end
