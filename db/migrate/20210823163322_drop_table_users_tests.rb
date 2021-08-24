class DropTableUsersTests < ActiveRecord::Migration[6.1]
  def up
    drop_table :users_tests, if_exits: true
  end
end
