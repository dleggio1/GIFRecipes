class Tag < ApplicationRecord
    has_many :taggings
    has_many :gifs, through: :taggings
end
