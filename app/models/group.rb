# rubocop:disable Layout/LineLength
class Group < ApplicationRecord
  validates :name, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z\s]+\z/, message: 'Only letters are allowed' }, length: { in: 3..30 }
  validates :icon, format: { with: /.+\.(jpe?g|png)\z/, message: 'only Allows JPEG,JPG and PNG pictures are allowed.' }, allow_blank: true

  has_many :routines
end
# rubocop:enable Layout/LineLength
