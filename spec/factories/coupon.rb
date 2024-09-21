FactoryBot.define do
  factory :coupon do
    # Man, I hope all this stuff works, I spent way too much time on this.

    # Generates something like "BOGO20"
    sequence(:code) { "BOGO#{rand(10..90)}" }  
    name { "Buy One Get One" }
    # Generates a 2-digit # representing the discount percentage
    percent_off { rand(10.0..90.0) }  
    status { "active" }
    association :merchant
  end
end