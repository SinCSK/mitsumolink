class ItemQuotation < ApplicationRecord
  belongs_to :item
  belongs_to :quotetion, optional: true
end
