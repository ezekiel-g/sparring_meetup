class Proposal < ApplicationRecord
  validates :description, presence: true

  belongs_to :user
  belongs_to :sport
end
