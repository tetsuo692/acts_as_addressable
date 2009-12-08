class CreateAddressableItem < ActiveRecord::Migration
  def self.up
    create_table :addressable_items, :force => true do |t|
      t.string :name
      t.references :addressable, :polymorphic => true
      t.timestamps
    end
    add_index :addressable_items, :name
  end

  def self.down
    drop_table :addressable_items
  end
end
