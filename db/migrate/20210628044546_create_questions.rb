class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :quest
      t.reference :test, index: true, foreign_key: true

      t.timestamps
    end
  end
end
