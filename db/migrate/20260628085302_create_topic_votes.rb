class CreateTopicVotes < ActiveRecord::Migration[8.0]
  def change
    create_table :topic_votes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true
      t.boolean :up_or_down

      t.timestamps
    end
  end
end
