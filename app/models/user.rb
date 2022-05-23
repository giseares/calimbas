class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :registerable :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable  se saco para evitar que los usuarios creen su logueo sin consultarnos.
  WORKSHOP = %w(TallerNico Coaching).freeze 
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  validates :workshop, inclusion: { in: WORKSHOP}
end
