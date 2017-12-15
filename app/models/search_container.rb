class SearchContainer < ApplicationRecord
  belongs_to :search_category
  has_many :search_items, dependent: :destroy
  accepts_nested_attributes_for :search_items, reject_if: lambda { |e| e[:title].blank? }, allow_destroy: true
end
