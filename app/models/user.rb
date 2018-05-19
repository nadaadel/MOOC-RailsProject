class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum gender: {male:0 , female:1}
  enum status: {student:0 , instructor:1}
  mount_uploader :avatar, AvatarUploader
  has_many :courses
  has_and_belongs_to_many :lectures 
  acts_as_commontator
  acts_as_votable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
