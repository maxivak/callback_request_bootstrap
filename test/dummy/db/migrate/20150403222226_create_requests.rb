class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :notes
      t.timestamps
    end
    add_index :requests, [:phone]
  end

  def self.down
    drop_table :requests
  end
end