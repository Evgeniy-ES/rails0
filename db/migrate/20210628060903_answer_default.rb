class AnswerDefault < ActiveRecord::Migration[6.1]
  def up
    change_column :answers, :correct, default: "Good!"
  end

  def down
    change_column :answers, :correct, default: nil
  end
end
