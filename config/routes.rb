# require file for routes
# ex: draw :admin
class ActionDispatch::Routing::Mapper
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end
end

Rails.application.routes.draw do

  namespace :admin do
    resources :abouts
  end
  namespace :admin do
    resources :services
  end
  root to: 'site/pages#index'
  get "/admin" => redirect("/admin/photos")

  draw :site
  draw :admin
  draw :api
end
