class PickHistory < ApplicationRecord
  belongs_to :user
  has_many :user_picks
end
