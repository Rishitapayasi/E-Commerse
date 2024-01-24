class Profile < ApplicationRecord

  enum role: [:buyer, :seller]

  belongs_to :user

  validates :full_name, :role, presence: true
  validates :phone_number, presence: true
  
end