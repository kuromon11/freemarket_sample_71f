FactoryBot.define do
  factory :shipping, class: Shipping do
    fee_burgen_id              {"1"}
    service_id                 {"1"}
    area_id                    {"1"}
    handling_time_id           {"1"}
    # association  :product, factory: :product
  end
end
