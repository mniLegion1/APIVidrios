class CreateContainers < ActiveRecord::Migration[6.0]
  def change
    create_table :containers do |t|
      t.float :cantKg
      t.string :dia
      t.timestamp :fecha

      t.timestamps
    end
  end
end
