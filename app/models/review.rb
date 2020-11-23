class Review < ApplicationRecord
  belongs_to :video
  belongs_to :user, dependent: :destroy
end
