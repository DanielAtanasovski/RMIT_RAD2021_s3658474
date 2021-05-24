class Bag < ApplicationRecord
  has_and_belongs_to_many :items
  belongs_to :users, optional: true
end
