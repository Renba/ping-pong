class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :player1_score
      t.integer :player2_score
      t.integer :player1_id
      t.integer :player2_id
      t.date    :played_at
      t.timestamps
    end
  end
  add_foreign_key :games, :users, column: :player1_id, primary_key: :id
  add_foreign_key :games, :users, column: :player2_id, primary_key: :id
end
