class Member
  attr_reader :name,
              :house,
              :school,
              :alias,
              :animagus,
              :ministry_of_magic,
              :order_of_the_phoenix,
              :dumbledores_army,
              :death_eater,
              :blood_status,
              :species
            
  def initialize(member_attributes)
    @name = member_attributes[:name]
    @house = member_attributes[:house]
    @school = member_attributes[:school]
    @alias = member_attributes[:alias]
    @animagus = member_attributes[:animagus]
    @ministry_of_magic = member_attributes[:ministryOfMagic]
    @order_of_the_phoenix = member_attributes[:orderOfThePhoenix]
    @dumbledores_army = member_attributes[:dumbledoresArmy]
    @death_eater = member_attributes[:deathEater]
    @blood_status = member_attributes[:bloodStatus]
    @species = member_attributes[:species]
  end

end