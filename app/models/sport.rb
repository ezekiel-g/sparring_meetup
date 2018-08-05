class Sport < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  has_many :sport_bgs
  has_many :proposals
end
