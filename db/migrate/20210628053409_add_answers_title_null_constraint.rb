class AddAnswersTitleNullConstraint < ActiveRecord::Migration[6.1]
  def up
    change_column_null(:answers, :answer, false)
  end

  def down
    change_column_null(:answers, :answer, true)
  end
end
