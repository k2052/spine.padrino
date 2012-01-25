SpinePadrino.controllers :pages, :provides => [:html, :json]  do    
  
  before(:show, :edit, :update, :destroy) do
    @page = Page.find_by_id(params[:id])     
    parser = Yajl::Parser.new
    params[:page] = parser.parse(request.body.read)
  end
  
  get :index, :map => '/' do  
    @pages = Page.all      
    respond(@pages)
  end 
  
  get :all, :map => '/pages' do  
    @pages = Page.all       
    respond(@pages)
  end  

  get :show, :map => '/pages/:id' do  
    render 'pages/show'
  end

  get :new, :map => '/pages/new' do  
    @page = Page.new
    render 'pages/new'
  end

  get :edit, :map => '/pages/edit/:id' do 
    render 'pages/edit'
  end

  post :create, :map => '/pages' do  
    @page = Page.new(params[:page])
    if @page.save
      respond(@page, :status => :created)
    else      
      respond(@page, :status => :unprocessable_entity)
    end
  end

  put :update, :map => '/pages/:id' do 
    @page.update_attributes(params[:page])
    if @page.save
      respond(@page)
    else
      respond(@page, :status => :unprocessable_entity)
    end
  end

  delete :destroy, :map => '/pages/:id' do  
    if @page.destroy
      respond(@page)
    else     
      respond(@page, :status => :unprocessable_entity)
    end
  end
end