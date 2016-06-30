Rails.application.routes.draw do
  
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end

  root to: 'site/pages#index'
  get "/admin" => redirect("/admin/photos")
  
  draw :site
  draw :admin
  
end
