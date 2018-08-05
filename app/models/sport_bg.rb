class Sport_bg < ApplicationRecord
  validates :years, presence: true

  belongs_to :user
  belongs_to :sport
end
