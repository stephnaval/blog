class Category < ApplicationRecord
    has_many :posts
  
    validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 50 }
    validates :description, length: { maximum: 500 }
  end  