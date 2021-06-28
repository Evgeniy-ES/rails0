class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
