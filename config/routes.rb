# require file for routes
# ex: draw :admin
class ActionDispatch::Routing::Mapper
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end
end

Rails.application.routes.draw do
    
  root to: 'site/pages#index'
  get "/admin" => redirect("/admin/photos")

  draw :site
  draw :admin
end
