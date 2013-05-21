class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :admin, :as => :admin
  attr_accessible :password_confirm, :remember_me

  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end
end
