class SearchCategory < ApplicationRecord
  has_many :search_containers, dependent: :destroy
  accepts_nested_attributes_for :search_containers, reject_if: lambda { |e| e[:title].blank? }, allow_destroy: true 
end
