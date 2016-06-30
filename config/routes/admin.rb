namespace :admin do
  resources :categories do
    resources :photos
  end

  resources :photos

  devise_for :users,
  :controllers => {
    sessions: 'admin/users/sessions',
    registrations: "admin/users/registrations"
  }

end
