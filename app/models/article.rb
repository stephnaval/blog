class Article < ApplicationRecord
    validates :name, presence: true
    validates :body, presence: true
    has_many :comments, dependent: :destroy
end