class AddressableItem < ActiveRecord::Base
  belongs_to :addressable, :polymorphic => true
  has_many :addresses, :class_name => "Address"
  
end