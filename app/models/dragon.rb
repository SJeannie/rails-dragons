class Dragon < ApplicationRecord
  belongs_to :user, optional: true
  has_many :dragon_abilities
  has_many :abilities, through: :dragon_abilities

  def initialize(attributes)
    super(attributes)

    if self.level == nil
      self.level = rand(1..3)
    end

    if self.hp == nil
      self.hp = rand(50..300)
    end

    if self.mp == nil
      self.mp = rand(50..300)
    end

  end

  def user_id=(id)
    user = User.find(id)
    self.user = user
    self.save
  end

  end
