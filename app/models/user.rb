class User < ApplicationRecord
  has_many :dragons, dependent: :destroy 

  def initialize(attributes)
    super(attributes)
    if self.level == nil
      self.level = 1
    end
  end

  # def dragon_id=(id)
  #   dragon = Dragon.find(id)
  #   self.dragons << dragon
  #   self.save
  # end

end
