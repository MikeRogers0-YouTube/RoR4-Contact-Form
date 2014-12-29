Rails.application.routes.draw do
  resources :contact_us, only: [:index] do
    collection do
      post :submit_form
      get :thanks
    end
  end

  root 'home#index'
end
