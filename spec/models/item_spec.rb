require 'rails_helper'

describe Item do
  describe '#create' do


    # 1. nameが空では登録できないこと
    it "is invalid without a nickname" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name])
    end

    # 2. i_textが空では登録できないこと
    it "is invalid without a nickname" do
      item = build(:item, i_text: nil)
      item.valid?
      expect(item.errors[:i_text])
    end

    # 3. condition_idが空では登録できないこと
    it "is invalid without a nickname" do
      item = build(:item, condition_id: nil)
      item.valid?
      expect(item.errors[:condition_id])
    end

    # 4. priceが空では登録できないこと
    it "is invalid without a nickname" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price])
    end
    

    # 5. name空では登録できないこと
    it "is invalid with a password that has less than 40 characters " do
      item = build(:item, name: "この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、")
      item.valid?
      expect(item.errors[:name])
    end
    # 6. i_textが空では登録できないこと
    it "is invalid with a password that has less than 1000 characters " do
      item = build(:item, i_text: "この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間")
      item.valid?
      expect(item.errors[:i_text])
    end

    # # 1. item_imagesが空では登録できないこと
    # it "is invalid without a nickname" do
    #   item_images = build(:item_images, item_images: nil)
    #   item_images.valid?
    #   expect(item.errors[:item_images])
    # end
    
  end
end

