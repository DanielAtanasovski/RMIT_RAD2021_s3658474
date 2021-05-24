class Item < ApplicationRecord
    has_many :images
    has_and_belongs_to_many :collections
    has_and_belongs_to_many :bag
end
