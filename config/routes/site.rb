namespace :site, path: '' do

  scope :portifolio do
    get '/' => 'pages#portifolio', as: :portifolio
  end

  scope :categoria do
    get ':id' => 'pages#album', as: :album_category
  end

  get 'servicos' => 'pages#services', as: :services
  get 'sobre' => 'pages#about', as: :about
  get 'contato' => 'pages#contact', as: :contact
end
