class Product < ApplicationRecord
  belongs_to :search_item, optional: true
end
