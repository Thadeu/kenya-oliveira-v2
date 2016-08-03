namespace :site, path: '' do
  scope :categoria do
    get ':category/:photo_id' => 'photos#show', as: :photo_show
  end
end
