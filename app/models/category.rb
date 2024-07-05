class Category < ApplicationRecord
    has_many :superheroes, dependent: :destroy
  
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
  end  