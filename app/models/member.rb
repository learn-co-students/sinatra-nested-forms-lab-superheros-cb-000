class Member
    attr_accessor :name, :power, :bio

    Members = []

    def initialize(params)
      @name = params[:name]
      @power = params[:power]
      @bio = params[:bio]
      Members << self
    end

    def self.all
      Members
    end

def self.clear
Ships.each { |member| member = nil }
end

end

