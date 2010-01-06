class AddressableItem < ActiveRecord::Base
  belongs_to :addressable, :polymorphic => true
  has_many :addresses, :class_name => "Address"
  
  def method_missing(method_name, *args)
    self.addressable.send(method_name, *args) if self.addressable.respond_to?(method_name)
  end
end