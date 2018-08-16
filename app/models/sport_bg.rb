class SportBg < ApplicationRecord
  validates :years, presence: true

  belongs_to :user
  belongs_to :sport
end
