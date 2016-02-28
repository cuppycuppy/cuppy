class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true,  length: { maximum: 12, message: '12文字以下としてください' }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  has_secure_password
  validates :password, length: { minimum: 6, message: '6文字以上としてください'  }
  has_many :cups
  has_many :cookeds
  has_many :cooked_recipes, through: :cookeds, source: :recipe

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def create_default_cups
      # add_cups: "breakfast", "lunch", "dinner", "dessert"
      # cup = Cup.new(title: 'breakfast', user: self)
      # cup.save
      self.cups.create(title: 'breakfast')
      self.cups.create(title: 'lunch')
      self.cups.create(title: 'dinner')
      self.cups.create(title: 'dessert')
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end

  def cooked?(recipe)
    cookeds.find_by(recipe_id: recipe.id)
  end

  def cooked!(recipe)
    cookeds.find_by(recipe_id: recipe.id)
  end

  def uncooked!(recipe)
    cookeds.find_by(recipe_id: recipe.id).destroy
  end

end