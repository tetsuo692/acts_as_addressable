module ActsAsAddressable
  module ClassMethods
    def acts_as_addressable(options = {})
      send :include, InstanceMethods
    end
  end
  
  module InstanceMethods
    
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
  end
end
