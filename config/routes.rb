Enterpriseape::Application.routes.draw do

  
  resource :items
  
  resource :emloyees
  
  resource :companies do
    collection { post :import }
  end
    
  get "welcome/index"
  get "welcome/about"
  get "welcome/contact"
  get "welcome/faq"
  get "welcome/pricing"
  get "welcome/features"
  
  resources :invoices do
    resources :purchases, except: [:index], controllers: 'invoice/purchases'
  end
  
  root to: 'welcome#index' 
  
end