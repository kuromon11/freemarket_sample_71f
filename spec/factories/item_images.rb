FactoryBot.define do
  factory :item_image, class: ItemImage do
    image_url        {File.open("#{Rails.root}/public/uploads/item_image/image_url/sample7.png")}
    association  :product, factory: :product
  end
end
