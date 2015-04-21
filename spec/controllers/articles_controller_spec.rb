require 'rails_helper'

describe ArticleController do
  describe 'index' do
    it 'return home page' do
      article = create(:article)
      get :index
      
      expect(response).to have_http_status(:success)
      expect(assigns(:articles).count).to eq 1
      
      
    end
  end
  
end
