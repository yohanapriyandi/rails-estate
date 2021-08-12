class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, 
         :recoverable, :rememberable, :validatable, :trackable

  has_many :properties

  mount_uploader :image, PhotoUploader

  def full_name
    "#{first_name} #{last_name}"
  end

  def company
    "test company"
  end
end
