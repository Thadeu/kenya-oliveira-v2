namespace :api, defaults: {format: 'json'} do
  namespace :v1 do
    post 'oauth' => 'auth#sign_in'
    resources :photos
    resources :categories
  end
end
