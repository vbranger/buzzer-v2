class CreateSystems < ActiveRecord::Migration[7.1]
  def change
    create_table :systems do |t|

      t.timestamps
    end
  end
end
