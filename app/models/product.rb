class Product < ApplicationRecord
  belongs_to :company
  belongs_to :drug
  belongs_to :category
end
