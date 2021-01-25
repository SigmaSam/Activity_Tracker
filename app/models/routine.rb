class Routine < ApplicationRecord
  validates :hours, presence: true, numericality: { only_float: true }
  validates :name, presence: true

  belongs_to :user
  has_many :bridges
  has_many :groups, through: :bridges

  def group=(group)
    g = Group.find_by(name: group)
    groups << g if g
  end
end
