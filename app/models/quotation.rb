class Quotation < ApplicationRecord
  belongs_to :user
  has_many :item_quotations
end
