require 'rails_helper'

describe ArticleController do
  
  before :each do
    @article = create(:article)
  end
  
  
  describe 'index' do
    it 'return home page' do
      get :index
      
      expect(response).to have_http_status(:success)
      expect(assigns(:articles).count).to eq 1
      
      
    end
  end
  
  describe 'show' do
    it 'return a article' do
      get :show, id: @article.id
      
      expect(response).to have_http_status(:success)
      expect(assigns(:article)).not_to eq nil
      expect(assigns(:article).title).to eq @article.title
      
    end
  end
  
  describe 'new' do
    it 'return a new article' do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sig_in FactoryGirl.Create(:admin)
      get :new
      
      expect(response).to have_http_status(:success)
      expect(assigns(:article)).not_to eq nil
      
    end
  end  
  
  
  
end



