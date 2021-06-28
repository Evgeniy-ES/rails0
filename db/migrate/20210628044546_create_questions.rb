class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.integer :id
      t.string :correct
      t.integer :test_id

      t.timestamps
    end
  end
end
