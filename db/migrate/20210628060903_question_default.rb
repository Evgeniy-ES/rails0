class TestDefault < ActiveRecord::Migration[6.1]
  def up
    change_column :questions, :correct, default: "Good!"
  end

  def down
    change_column :questions, :correct, default: nil
  end
end
