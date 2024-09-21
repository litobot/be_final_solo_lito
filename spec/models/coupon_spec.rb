require 'rails_helper'

RSpec.describe Coupon, type: :model do
  it { should belong_to(:merchant) }
  it { should have_many(:invoices).optional }

  it { should validate_presence_of(:code) }
  it { should validate_uniqueness_of(:code) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:percent_off) }
  it { should validate_numericality_of(:percent_off).is_greater_than(0).is_less_than_or_equal_to(100) }
  it { should validate_inclusion_of(:status).in_array(["active", "inactive"]) }
end