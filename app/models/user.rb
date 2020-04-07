class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :card
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :family_name, presence: true, format: { with:/\A[ぁ-んァ-ン一-龥]/}
  validates :first_name, presence: true, format: { with:/\A[ぁ-んァ-ン一-龥]/}
  validates :family_name_kana, presence: true, format: { with:/\A[ァ-ヶー－]+\z/}
  validates :first_name_kana, presence: true, format: { with:/\A[ァ-ヶー－]+\z/}
  validates :birth_year, presence: true, format: { with:/\A[0-9]+\z/}
  validates :d_family_name, presence: true, format: { with:/\A[ぁ-んァ-ン一-龥]/}
  validates :d_first_name, presence: true, format: { with:/\A[ぁ-んァ-ン一-龥]/}
  validates :d_family_name_kana, presence: true, format: { with:/\A[ァ-ヶー－]+\z/}
  validates :d_first_name_kana, presence: true, format: { with:/\A[ァ-ヶー－]+\z/}
  validates :zip_code, presence: true, format: { with:/\A\d{7}\z/}
  validates :prefecture, presence: true, format: {with:/\A[一-龥]+\z/}
  validates :city, presence: true, format: { with:/\A[一-龥]+\z/}
  validates :password, length: { minimum: 7 }
  validates :address, presence: true
end
