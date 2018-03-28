class Team
  attr_accessor :name, :motto, :height 

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
  end

end
