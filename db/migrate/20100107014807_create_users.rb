class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      
      t.integer :fb_user_id, :limit => 20
      t.string  :name
                
      t.timestamps
    end
    
    add_index :users, :fb_user_id
  end

  def self.down
    drop_table :users
  end
end
