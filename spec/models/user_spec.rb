require 'rails_helper'

describe User do
  describe '#create' do
    # 2. nicknameが空では登録できないこと
    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    # 3. emailが空では登録できないこと
    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    # 4. passwordが空では登録できないこと
    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    # 5. passwordが存在してもpassword_confirmationが空では登録できないこと
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    # 6. ユーザー名字が空では登録できない
    it "is invalid without a family_name" do
      user = build(:user, family_name: nil)
      user.valid?
      expect(user.errors[:family_name]).to include("can't be blank")
    end

    # 7. ユーザー名前が空では登録できない
    it "is invalid without a first_name" do
      user = build(:user, first_name: nil)
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end

    # 8. ユーザー名字のフリガナが空では登録できない
    it "is invalid without a family_name_kana" do
      user = build(:user, family_name_kana: nil)
      user.valid?
      expect(user.errors[:family_name_kana]).to include("can't be blank")
    end

    # 9. ユーザー名前のフリガナが空では登録できない
    it "is invalid without a first_name_kana" do
      user = build(:user, first_name_kana: nil)
      user.valid?
      expect(user.errors[:first_name_kana]).to include("can't be blank")
    end

    # 10. 送付先ユーザー名字が空では登録できない
    it "is invalid without a d_family_name" do
      user = build(:user, d_family_name: nil)
      user.valid?
      expect(user.errors[:d_family_name]).to include("can't be blank")
    end

    # 11. 送付先ユーザー名前が空では登録できない
    it "is invalid without a d_first_name" do
      user = build(:user, d_first_name: nil)
      user.valid?
      expect(user.errors[:d_first_name]).to include("can't be blank")
    end
    # 12. 送付先ユーザー名字のフリガナが空では登録できない
    it "is invalid without a d_family_name_kana" do
      user = build(:user, d_family_name_kana: nil)
      user.valid?
      expect(user.errors[:d_family_name_kana]).to include("can't be blank")
    end

    # 13. 送付先ユーザー名前のフリガナが空では登録できない
    it "is invalid without a first_name_kana" do
      user = build(:user, d_first_name_kana: nil)
      user.valid?
      expect(user.errors[:d_first_name_kana]).to include("can't be blank")
    end

    # 14. 郵便番号が必須
    it "is invalid without a zip_code" do
      user = build(:user, zip_code: nil)
      user.valid?
      expect(user.errors[:zip_code]).to include("can't be blank")
    end

    # 15. 都道府県が必須
    it "is invalid without a prefecture" do
      user = build(:user, prefecture: nil)
      user.valid?
      expect(user.errors[:prefecture]).to include("can't be blank")
    end

    # 16. 市区町村が必須
    it "is invalid without a city" do
      user = build(:user, city: nil)
      user.valid?
      expect(user.errors[:city]).to include("can't be blank")
    end

    # 17. 番地が必須
    it "is invalid without a address" do
      user = build(:user, address: nil)
      user.valid?
      expect(user.errors[:address]).to include("can't be blank")
    end

    # 18. 重複したemailが存在する場合登録できないこと
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    # 19. passwordが7文字以上であれば登録できること
    it "is valid with a password that has more than 7 characters " do
      user = build(:user, password: "0000000", password_confirmation: "0000000")
      user.valid?
      expect(user).to be_valid
    end

    # 20. passwordが6文字以下であれば登録できないこと
    it "is invalid with a password that has less than 6 characters " do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
    end

    # 21. e-mailが@とドメインを含まなければ登録できないこと
    it "@とドメインが含まれていません" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email])
    end
    
    # 22. 半角で入力してはいけないこと
    it "全角で入力してください" do
      user = build(:user, family_name: "aaaaa")
      user.valid?
      expect(user.errors[:family_name])
    end

  end
end