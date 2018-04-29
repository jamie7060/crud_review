class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :what
      t.decimal :how_much
      t.decimal :how_many
      t.string :buysell
      t.timestamps
    end
  end
end
