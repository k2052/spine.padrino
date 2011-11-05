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
    stylesheets_url 'css'
    javascripts_url 'js'  
    public_assets_folder '/'
    public_stylesheets_folder 'css'  
    public_javascripts_folder 'js'
    append_path 'assets/js'     
    append_path '../vendor/assets/js' 
  end
end
