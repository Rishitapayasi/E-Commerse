class Profile < ApplicationRecord

  belongs_to :user

  validates :full_name, presence: true
  validates :phone_number, presence: true
  
end