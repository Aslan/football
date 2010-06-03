class CreatePollResponses < ActiveRecord::Migration
  def self.up
    create_table :poll_responses do |t|
      t.integer :poll_answer_id, :null => false
      t.integer :user_id, :null => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :poll_responses
  end
end
