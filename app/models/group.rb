# rubocop:disable Layout/LineLength
class Group < ApplicationRecord
  has_one_attached :icon

  validates :name, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z\s]+\z/, message: 'Only letters are allowed' }, length: { in: 3..30 }

  has_many :bridges
  has_many :routines, through: :bridges
end
# rubocop:enable Layout/LineLength
