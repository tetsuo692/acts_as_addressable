module ActsAsAddressable
  module ClassMethods
    def acts_as_addressable
      send :include, InstanceMethods
    end
  end
  
  module InstanceMethods
    
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
  end
end
