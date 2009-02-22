class AddPollIdToAnswer < ActiveRecord::Migration
  def self.up
    add_column :answers, :poll_id, :integer
  end

  def self.down
    remove_column :answers, :poll_id
  end
end
