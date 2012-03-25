require 'padrino/sprockets'   
class SpinePadrino < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers
  register CompassInitializer 
  set :stylesheets_folder, :css
  set :javascripts_folder, :js
    
  register Padrino::AssetHelpers
  register Padrino::Sprockets   
  register Padrino::Responders    
  register Sprockets::Jquery::Tmpl::App   
  puts Sprockets::Jquery::Tmpl::App.inspect

  ## 
  # Assets
  #
  
  assets do    
    digest false  
    handle_stylesheets false  
    assets_folder '/public'
    append_path 'assets/js'     
    append_path '../vendor/assets/js' 
  end
end
