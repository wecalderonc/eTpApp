class User < ApplicationRecord
  has_many :problemsolutions, dependent: :destroy
  has_many :projects, through: :problemsolutions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
