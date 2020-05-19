class Member
  attr_reader :name, :house, :patronus, :role

  def initialize(info)
    @name = info[:name]
    @role = info[:role] || nil
    @house = info[:house]
    @patronus = info[:patronus] || nil
  end
end
