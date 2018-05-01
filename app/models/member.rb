class Member
  attr_reader :name, :power, :bio

  MEMBERS =[]

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    MEMBERS << self
  end

  def Member::all
    MEMBERS
  end

  def Member::clear
    MEMBERS.clear
  end

end
