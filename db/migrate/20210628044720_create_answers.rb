class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :answer
      t.reference :question, index: true, foreign_key: true
      t.boolean :correct

      t.timestamps
    end
  end
end
