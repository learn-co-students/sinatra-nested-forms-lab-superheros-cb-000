module StandardMethods
  module ClassMethods

    def self.extended(base) # fires at start-up (during Class-level instantiation)
      base.class_variable_set(:@@all, Array.new)
    end

    def all
      return self.class_variable_get(:@@all)
    end

  end

  module InstanceMethods

    def initialize(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
      self.class.all << self
    end
    
  end
end
