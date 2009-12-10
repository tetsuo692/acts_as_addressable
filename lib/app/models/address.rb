class Address < ActiveRecord::Base
  belongs_to :addressable_item, :class_name => "AddressableItem", :foreign_key => "addressable_item_id"
end