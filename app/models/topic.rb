class Topic < ApplicationRecord
  has_many :tests, dependent: :destroy

  validates :name, presence: true
end
