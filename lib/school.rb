class School
  attr_reader :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
end