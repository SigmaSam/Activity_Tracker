class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true,
                     format: { with: /\A[a-zA-Z\s]+\z/, message: 'Only letters are allowed' }, length: { in: 3..30 }
  
    has_many :routines, foreign_key: :user_id, dependent: :destroy
    has_many :groups, through: :routines
  end
  