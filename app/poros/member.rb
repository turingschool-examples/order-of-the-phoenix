class Member
  attr_reader :name, :house, :patronus, :role

  def initialize(info)
    require "pry"; binding.pry
    @name = info[:name]
    @role = info[:role] || nil
    @house = info[:house]
    @patronus = info[:patronus] || nil
  end
end
