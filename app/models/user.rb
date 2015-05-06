class User < ActiveRecord::Base
  has_many :articles
  has_many :comments
  has_many :images, as: :imageable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
  		   :registerable,
         :recoverable, 
         :rememberable, 
         :trackable, 
         :validatable
end
