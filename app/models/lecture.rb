class Lecture < ApplicationRecord
  validates :name , presence: true 
  validates :content , presence: true 
  validates :attachment , presence: true 
  mount_uploader :attachment , AttachmentUploader
  belongs_to :course
  has_many :LectureComment
  acts_as_commontable
  acts_as_votable
  has_and_belongs_to_many :users

end
