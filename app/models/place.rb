class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
