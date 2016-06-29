namespace :admin do
  resources :categories do
    resources :photos
  end

  resources :photos

  devise_for :users,
  :controllers => {
    sessions: 'admin/users/sessions',
    registrations: "admin/users/registrations"
  },
  :path_names  => {
    :sign_in   => "entrar", :sign_out => "sair", :sign_up => "cadastrar", :edit => "editar"
  }
end
