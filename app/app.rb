require 'padrino/sprockets'   
class SpinePadrino < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers
  register CompassInitializer  
  register Padrino::Sprockets   
  register Padrino::Responders    
  
  
  ## 
  # Assets
  #
  
  assets do    
    digest false  
    handle_stylesheets false  
    assets_folder '/public'
    stylesheets_folder 'css'  
    javascripts_folder 'js'
    append_path 'assets/js'     
    append_path '../vendor/assets/js' 
  end
end
