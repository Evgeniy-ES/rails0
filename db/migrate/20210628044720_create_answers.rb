class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.integer :id
      t.string :answer
      t.integer :quest_id

      t.timestamps
    end
  end
end
