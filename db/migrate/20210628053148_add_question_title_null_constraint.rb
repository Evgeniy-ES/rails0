class AddQuestionTitleNullConstraint < ActiveRecord::Migration[6.1]
  def up
    change_column_null(questions, correct, false)
  end

  def down
    change_column_null(questions, correct, true)
  end
end
