require 'rails_helper'

describe Shipping do
  describe '#create' do
    it "fee_burgen_idが空では登録できないこと" do
      shipping = build(:shipping, fee_burgen_id: nil)
      shipping.valid?
      expect(shipping.errors[:fee_burgen_id])
    end
    it "service_idが空では登録できないこと" do
      shipping = build(:shipping, service_id: nil)
      shipping.valid?
      expect(shipping.errors[:service_id])
    end
    it "area_idが空では登録できないこと" do
      shipping = build(:shipping, area_id: nil)
      shipping.valid?
      expect(shipping.errors[:area_id])
    end
    it "handling_time_idが空では登録できないこと" do
      shipping = build(:shipping, handling_time_id: nil)
      shipping.valid?
      expect(shipping.errors[:handling_time_id])
    end
  end
end

describe Shipping do
  describe '#update' do
    it "fee_burgen_idが空では登録できないこと" do
      shipping = build(:shipping, fee_burgen_id: nil)
      shipping.valid?
      expect(shipping.errors[:fee_burgen_id])
    end
    it "service_idが空では登録できないこと" do
      shipping = build(:shipping, service_id: nil)
      shipping.valid?
      expect(shipping.errors[:service_id])
    end
    it "area_idが空では登録できないこと" do
      shipping = build(:shipping, area_id: nil)
      shipping.valid?
      expect(shipping.errors[:area_id])
    end
    it "handling_time_idが空では登録できないこと" do
      shipping = build(:shipping, handling_time_id: nil)
      shipping.valid?
      expect(shipping.errors[:handling_time_id])
    end
  end
end