class CreateChildren < ActiveRecord::Migration
  def self.up
    create_table :children do |t|
      t.string :name
      t.string :gender
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :children
  end
end
