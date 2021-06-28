class TestDefault < ActiveRecord::Migration[6.1]
  def up
    change_column :tests, :title, default: "How are you?"
  end

  def down
    change_column :tests, :title, default: nil
  end
end
