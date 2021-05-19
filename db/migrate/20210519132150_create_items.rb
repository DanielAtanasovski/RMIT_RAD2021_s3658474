class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.integer :popularity

      t.timestamps
    end
  end
end
