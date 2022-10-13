class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :Name
      t.float :amount

      t.timestamps
    end
  end
end
