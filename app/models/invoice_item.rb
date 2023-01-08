class InvoiceItem < ApplicationRecord
  belongs_to :item
  belongs_to :invoice
  has_many :transactions, through: :invoices

  enum status: {packaged: 0,
                pending: 1,
                shipped: 2}

  def revenue
    self.quantity * self.unit_price / 100.00
  end
end