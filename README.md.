Pretty much a straight port of [spine.rails3](https://github.com/maccman/spine.rails3) to Padrino + Mongomapper. 

However, it uses a some of my forks to get things done in a more efficient manner. Spine can work just fine with Padrino out
of the box, it just takes a bit more effort. My forks should eliminate the extra effort required.
        
1. Fork of [padrino-sprockets](https://github.com/bookworm/padrino-sprockets) &
[Padrino](https://github.com/bookworm/padrino-framework) for better sprockets based assset handling. 
2. Fork of [sprockets-jquery-tmpl](https://github.com/bookworm/sprockets-jquery-tmpl) for the JS views. The original was only
compatible with rails.

Most importanlty it uses my fork of [padrino-responders](https://github.com/bookworm/padrino-responders) which provides
Rails-esque responders.       

If you create a new project you'll need to add those gems to your Gemfile to get any code examples found in the project to
work.

E.g:

```
gem 'sprockets' 
gem 'coffee-script'  
gem 'sprockets-jquery-tmpl', :git => 'git://github.com/bookworm/sprockets-jquery-tmpl.git'
gem 'uglifier' 
gem 'padrino-sprockets', :git => 'git://github.com/bookworm/padrino-sprockets.git'         
gem 'padrino-responders', :git => 'git://github.com/bookworm/padrino-responders.git'            
gem 'yajl-ruby', :require => 'yajl'

# Padrino fork with better asset handling
gem 'padrino', :git => 'git://github.com/bookworm/padrino-framework.git'       
```

Thats about it, have fun!