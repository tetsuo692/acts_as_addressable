module ActsAsAddressable
  module ClassMethods
    def acts_as_addressable(options = {})
      options = {:sort_column => :title}.merge(options)
      
      has_one :addressable_item, :class_name => "AddressableItem", :as => :addressable
      
      send :include, InstanceMethods
    end
  end
  
  module InstanceMethods
    
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
  end
end
