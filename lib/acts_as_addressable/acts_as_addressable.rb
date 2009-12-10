module ActsAsAddressable
  module ClassMethods
    def acts_as_addressable(options = {})
      options = {:sort_column => :title}.merge(options)
      
      has_one :addressable_item, :class_name => "AddressableItem", :as => :addressable
      
      create_reflections
      
      send :include, InstanceMethods
    end
    
    protected
    def create_reflections
      AddressableItem.reflect_on_all_associations.each do |association|
        unless association.name == :addressable
          options = {:through => :addressable_item}.merge(association.options)
          macro = (association.macro == :belongs_to) ? :has_one : association.macro
          self.send(macro, association.name, options)
        end
      end
    end
  end
  
  module InstanceMethods
    
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
  end
end