class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, presence: true

  VALID_CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, presence: true, inclusion: { in: VALID_CATEGORIES }
end
