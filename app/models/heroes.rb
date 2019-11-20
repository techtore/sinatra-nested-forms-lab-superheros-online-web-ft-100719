class Hero 
  attr_reader :name, :power, :biography
  HEROES = []
  
  def initialize(params)
    @name = params[name]
    @power = params[power]
    @biography = params[biography]
    HEROES << self
  end
  
  def self.all 
    HEROES
  end
end