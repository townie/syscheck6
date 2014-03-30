class Owner < ActiveRecord::Base
  validates :first_name, presence: true, format: { with: /\w[a-z]+\z/i }
  validates :last_name, presence: true, format: { with: /\w[a-z]+\z/i }
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }, uniqueness: true
  validates :dog_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
