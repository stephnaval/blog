class Superhero < ApplicationRecord
    belongs_to :category
  
    validates :name, presence: true, uniqueness: true
    validates :superpower, presence: true
    validates :category, presence: true
  end
  