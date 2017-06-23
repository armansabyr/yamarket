class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.boolean :acive, :default => true

      t.timestamps
    end
  end
end
