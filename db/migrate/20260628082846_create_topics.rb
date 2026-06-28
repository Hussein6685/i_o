class CreateTopics < ActiveRecord::Migration[8.0]
  def change
    create_table :topics do |t|
      t.references :user, null: false, foreign_key: true
      t.references :community, null: false, foreign_key: true
      t.string :title
      t.text :text
      t.boolean :is_user_private

      t.timestamps
    end
  end
end
