class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :state
      t.string :passkey

      t.timestamps
    end
  end
end
