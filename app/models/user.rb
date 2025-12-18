class User < ApplicationRecord
  has_many :analyses
  has_many :courses, through: :analyses
end
