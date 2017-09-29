Rails.application.routes.draw do

  scope path: '/api' do
    resources :docs, only: [:index], path: '/swagger'
    scope path: '/v1' do
      resources :users
      resources :events
    end
  end

end
