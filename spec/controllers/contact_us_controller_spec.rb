require 'rails_helper'

describe ContactUsController, type: :controller do

  describe 'GET /index' do
    #it 'renders without error' do
      #get :index
      #expect(response).to have_http_status(:success)
    #end
  end

  describe 'POST /submit_form' do
    #context 'invalid contact form' do
      #it 'renders index' do
        #post :submit_form
        #expect(response).to have_http_status(:success)
        #expect(response).to have_rendered(:index)
      #end
    #end
    
    #context 'valid contact form' do
      #it 'redirects to /thanks' do
        #post :submit_form, contact_form: { some: 'data' }
        #expect(response).to redirect_to action: :thanks
      #end
    #end
  end

  describe 'GET /thanks' do
    #it 'renders without error' do
      #get :thanks
      #expect(response).to have_http_status(:success)
    #end
  end
  
end
