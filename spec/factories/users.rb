FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"0000000"}
    password_confirmation {"0000000"}
    family_name           {"山田"}
    family_name_kana      {"ヤマダ"}
    first_name            {"花子"}
    first_name_kana       {"ハナコ"}
    birth_year            {"19970310"}
    d_family_name         {"鈴木"}
    d_family_name_kana    {"スズキ"}
    d_first_name          {"誠也"}
    d_first_name_kana     {"セイヤ"}
    zip_code              {"8690416"}
    prefecture            {"熊本県"}
    city                  {"宇土市松山町"}
    address               {"3103-81"}
  end

end