class Ability < ApplicationRecord
  has_many :dragon_abilities
  has_many :dragons, through: :dragon_abilities

#inkball, fireball, toxic blast, firestone
#banana peels, iceball, water ice

# def dragon_id=(id)
#   dragon = Dragon.find(id)
#   self.dragon = dragon
#   self.save
# end

end
