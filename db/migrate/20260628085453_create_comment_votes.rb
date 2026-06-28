class CreateCommentVotes < ActiveRecord::Migration[8.0]
  def change
    create_table :comment_votes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true
      t.boolean :up_or_down

      t.timestamps
    end
  end
end
