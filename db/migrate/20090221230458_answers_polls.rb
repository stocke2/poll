class AnswersPolls < ActiveRecord::Migration
  def self.up
    create_table :answers_polls, :id=>false, :force => true do |t|
      t.integer :answer_id, :poll_id
    end
    add_index :answers_polls,[:answer_id]
    add_index :answers_polls,[:poll_id]
  end

  def self.down
    drop_table :answers_polls
  end
end
