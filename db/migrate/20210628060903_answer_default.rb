class AnswerDefault < ActiveRecord::Migration[6.1]
  def up
    change_column_default(:answers, :answer, 'Good!')
  end

  def down
    change_column_default(:answers, :answer, nil)
  end
end
