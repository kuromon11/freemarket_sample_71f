require 'rails_helper'

describe Shipping do
  describe '#create' do
    # 1. fee_burgen_idが空では登録できないこと
    it "is invalid without a nickname" do
      shipping = build(:shipping, fee_burgen_id: nil)
      shipping.valid?
      expect(shipping.errors[:fee_burgen_id])
    end

    # 1. service_idが空では登録できないこと
    it "is invalid without a nickname" do
      shipping = build(:shipping, service_id: nil)
      shipping.valid?
      expect(shipping.errors[:service_id])
    end

    # 1. area_idが空では登録できないこと
    it "is invalid without a nickname" do
      shipping = build(:shipping, area_id: nil)
      shipping.valid?
      expect(shipping.errors[:area_id])
    end

    # 1. handling_time_idが空では登録できないこと
    it "is invalid without a nickname" do
      shipping = build(:shipping, handling_time_id: nil)
      shipping.valid?
      expect(shipping.errors[:handling_time_id])
    end
  end
end