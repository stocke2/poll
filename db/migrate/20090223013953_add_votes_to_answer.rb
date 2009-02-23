class AddVotesToAnswer < ActiveRecord::Migration
  def self.up
    add_column :answers, :votes, :integer, :default=> 0
  end

  def self.down
    remove_column :answers, :votes
  end
end
