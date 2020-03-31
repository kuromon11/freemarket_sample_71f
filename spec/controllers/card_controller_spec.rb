# require 'rails_helper'

# RSpec.describe CardController, type: :controller do

#   describe "GET #new" do
#     it "returns http success" do
#       get :new
#       expect(response).to have_http_status(:success)
#     end
#   end

#   describe "GET #show" do
#     it "returns http success" do
#       get :show
#       expect(response).to have_http_status(:success)
#     end
#   end

# end


# require 'rails_helper'
# describe CardController, type: :controller do
#   let(:user) { create(:user) }
#   let(:card) { create(:card, user_id: user.id) }
#   describe 'GET #show' do
#       context 'ログイン時' do
#       before do
#         login user
#       end
#       it "showアクションのページに遷移するか" do
#         allow(Payjp::Customer).to receive(:create).and_return(PayjpMock.prepare_customer_information)
#         item = create(:item)
#         get :show, params: { id: item,card: card}
#         expect(response).to render_template :show
#       end
#     end
#   end
# end