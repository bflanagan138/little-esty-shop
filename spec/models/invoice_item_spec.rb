require 'rails_helper'

RSpec.describe InvoiceItem, type: :model do
  describe 'relationships' do
    it {should belong_to(:invoice)}
    it {should belong_to(:item)}
    it {should have_one(:merchant).through(:item)}
    it {should have_one(:customer).through(:invoice)}
    it {should have_many(:transactions).through(:invoice)}
  end

  it 'has a method to find the revenue for instances of itself' do
    InvoiceItem.delete_all
    @merchant1 = Merchant.create!(name: "Schroeder-Jerde")
    @item1 = Item.create!(name: "Item 1", unit_price: 75107, description: "it's a thing that does stuff", merchant_id: @merchant1.id)
    @customer1 = Customer.create!(first_name: "Joey", last_name: "Ondricka")
    @invoice1 = Invoice.create!(customer_id: @customer1.id, status: "completed")
    @invoice_item1 = InvoiceItem.create!(item_id: @item1.id, invoice_id: @invoice1.id, quantity: 23, unit_price: 2, status: "shipped")

    expect(InvoiceItem.revenue).to eq(0.46)
  end
end