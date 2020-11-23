class Video < ApplicationRecord
  belongs_to :interview
  has_many :reviews, dependent: :destroy
end
