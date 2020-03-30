FactoryBot.define do

  factory :item do
    name              {"嫌われる勇気"}
    i_text                 {"アドラー心理学"}
    condition_id {"1"}
    price {"3000"}
    # after(:build) do |item|
    #   item.shipping<< build(:shipping, item: item)
    # end
  end
end