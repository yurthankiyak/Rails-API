class Course < ApplicationRecord
  belongs_to :subject
  has_many :videos
  has_many :analyses
  has_many :users, through: :analyses
end
