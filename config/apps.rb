Padrino.configure_apps do
  set :protection, :except => :path_traversal
end

# Mounts the core application for this project
Padrino.mount("PadrinoExample::App", :app_file => Padrino.root("app/app.rb")).to("/")
