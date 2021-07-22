class AddCategoriesTitleNullConstraint < ActiveRecord::Migration[6.1]
  def up
    change_column_null(:categories, :category, false)
  end

  def down
    change_column_null(:categories, :category, true)
  end
end
