class Superhero < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 50 }
    validates :civilian_name, presence: true, length: { minimum: 3, maximum: 50 }
    validates :power, presence: true, length: { minimum: 3, maximum: 100 }
    validates :origin, presence: true, length: { minimum: 3, maximum: 100 }
    validates :birthdate, presence: true
  end  