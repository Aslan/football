class CreatePollAnswers < ActiveRecord::Migration
  def self.up
    create_table :poll_answers do |t|
      t.integer :poll_id, :null => false
      t.string :body
      t.integer :response_count, :default => 0
      t.timestamps
    end
  end
  
  def self.down
    drop_table :poll_answers
  end
end
