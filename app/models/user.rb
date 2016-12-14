class User < ApplicationRecord

	belongs_to :role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  def has_role?(role_sym)
  	role.nombre.underscore.to_sym == role_sym
  end
end
