class SearchItem < ApplicationRecord
  belongs_to :search_container
  has_one :product
  accepts_nested_attributes_for :product
end
