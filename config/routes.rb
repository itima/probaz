ActionController::Routing::Routes.draw do |map|
  map.resources :logers

  map.resources :seccodes



  map.resources :hairlengths

  map.resources :haircolors

  map.resources :pclevels

  map.resources :langlevels

  map.resources :anktolangs

  map.resources :anktogroups

  map.resources :workemployments

  map.resources :workgraphics

  map.resources :languages

  map.resources :educationforms

  map.resources :educations

  map.resources :metros

  map.resources :cities

  map.resources :ankgroups

  map.resources :selanks

  map.resources :selections

  map.resources :projects

  map.resources :admins

  map.resources :firms


  map.resources :promoanks

  

   map.root :controller => "main"

  map.main_path 'main_path', :controller => 'main', :action => 'index'
  map.promologin_path 'promologin_path', :controller => 'promologin', :action => 'index'
  map.firmlogin_path 'firmlogin_path', :controller => 'firmlogin', :action => 'index'
  map.adminlogin_path 'adminlogin_path', :controller => 'adminlogin', :action => 'index'

  map.promomain_path 'promomain_path', :controller => 'promomain', :action => 'index'

  map.firmmain_path 'firmmain_path', :controller => 'firmmain', :action => 'index'
  map.adminmain_path 'adminmain_path', :controller => 'adminmain', :action => 'index'
  map.filter_path 'filter_path', :controller => 'filter', :action => 'index'
  map.selank_pay_path 'selank_pay_path', :controller => 'selanks', :action => 'pay'
  map.selank_uppay_path 'selank_uppay_path', :controller => 'selanks', :action => 'uppay'
  map.register_path 'register_path', :controller => 'register', :action => 'index'
  map.ankfotos_path 'ankfotos_path', :controller => 'promoanks', :action => 'files'
  map.activeank_path 'activeank_path', :controller => 'promoanks', :action => 'activate'
  map.sendtoank_path 'sendtoank_path', :controller => 'promoanks', :action => 'sendtoank'
  map.avtoactive_path 'avtoactive_path', :controller => 'promoanks', :action => 'avtoactive'
  map.moderateank_path 'moderateank_path', :controller => 'promoanks', :action => 'moderateank'

  map.activefirm_path 'activefirm_path', :controller => 'firms', :action => 'activate'
   map.sendtofirm_path 'sendtofirm_path', :controller => 'firms', :action => 'sendtofirm'
  map.avtoactivefirm_path 'avtoactivefirm_path', :controller => 'firms', :action => 'avtoactivefirm'
 map.moderatefirm_path 'moderatefirm_path', :controller => 'firms', :action => 'moderatefirm'
 map.setpay_path 'setpay_path', :controller => 'firms', :action => 'setpay'
 map.setemail 'setemail', :controller => 'login_no_email', :action => 'index'
 
 map.with_options :controller => 'contact' do |contact|
  contact.contact '/contact',
    :action => 'index',
    :conditions => { :method => :get }

  contact.contact '/contact',
    :action => 'create',
    :conditions => { :method => :post }
end

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
