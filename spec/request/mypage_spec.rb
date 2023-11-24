require 'rails_helper'

RSpec.describe 'Mypage', type: :request do
  describe 'GET /mypage' do
    context 'ログインしていないとき' do
      it 'ログイン画面へリダイレクト' do
        get mypage_path
        expect(response).to redirect_to(:new_user_session)
      end
    end
    
    context 'ログインしているとき' do
      let(:user) { User.create(email: 'a@b.com', password: 'pass') }
      
      before do
        login_as user
      end
      
      it 'マイページを表示' do
        get mypage_path
        #expect(response.body).to include 'ここはマイページです'
      end
    end
  end
end

