class AddQuestionTitleNullConstraint < ActiveRecord::Migration[6.1]
  def up
    change_column_null(:questions, :quest, false)
  end

  def down
    change_column_null(:questions, :quest, true)
  end
end
