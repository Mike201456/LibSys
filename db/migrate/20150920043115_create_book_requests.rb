class CreateBookRequests < ActiveRecord::Migration
  def up
    create_table :book_requests do |t|
      t.string :isbn, :limit => 13, :null => false
      t.string :title, :limit => 50, :null => false
      t.string :author, :limit => 25, :null => false
      t.string :description, :limit => 50, :null => false
      t.string :status, :limit => 12, :null => false
    end
  end

  def down
    drop_table :book_requests     
  end
end