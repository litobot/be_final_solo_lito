require 'rails_helper'

RSpec.describe Invoice, type: :model do
  it { should belong_to(:customer) }
  it { should belong_to(:merchant) }
  it { should belong_to(:coupon).optional }
  it { should have_many(:invoice_items) } # Add .dependent(:destroy) ?
  it { should have_many(:transactions) } # Add .dependent(:destroy) ?

  it { should validate_presence_of(:customer_id) }
  it { should validate_presence_of(:merchant_id) }
  it { should validate_inclusion_of(:status).in_array(["shipped", "packaged", "returned"]) }
end