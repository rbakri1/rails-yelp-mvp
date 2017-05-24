class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  # GIVEN CATEGORY WILL BE A FIXED LIST, AND THEREFORE A DROP
  # DOWN, AM I CORRECT IN ASSUMING WE DON'T NEED TO VALIDATE IT AGAINST ANYTHING OTHER THAN PRESENCE?
  # IF INCLUSION IS THE RIGHT VALIDATION, WHAT HAPPENS IF THE LIST/ OPTIONS IS HUNDREDS OF OPTIONS LONG?
  # IS THERE A BETTER PLACE TO STORE THEM?

end

