Rails.application.routes.draw do
  get 'home/home'

  get 'master/dashboard'
  
  post 'master/dashboard'

  get 'master/pagina_teste'

  get 'representante/home'

  get 'representante/pagina_teste'

  get 'representante/new'

  get 'representante/index'

  get 'representante/relatorio'
  
  post 'representante/show'
  
  get 'representante/show'
  
  post 'representante/show_representantes_por_ddd'
  
  get 'representante/show_representantes_por_ddd'
  
  post 'representante/show_representante'
  
  get 'representante/show_representante'
   
  post 'representante/excluir'
  
  get 'representante/excluir'
  
  post 'representante/exibir'
  
  get 'representante/exibir'
  ##################################
  #Rotas relacionadas a crud do PDD#
  ##################################
  
  get 'pdd/home'

  get 'pdd/new'

  get 'pdd/show'
  
  post 'pdd/show'

  get 'pdd/index'

  get 'pdd/relatorios'

  get 'pdd/pagina_teste'
  
  get 'pdd/listar_por_representante'
  
  get 'pdd/listar_por_regiao'
  
  post 'pdd/listar_por_representante'
  
  post 'pdd/listar_por_representante'
  
  get 'pdd/listar_por_representante'
  
  post 'pdd/listar_por_regiao'
  
  get 'pdd/listar_por_regiao'
  
  post 'pdd/show_por_representante'
  
  get 'pdd/show_por_representante'
  
  post 'pdd/show_por_regiao'
  
  get 'pdd/show_por_regiao'
  
  post 'pdd/exibir'
  
  get 'pdd/exibir'
  
  post 'pdd/excluir'
  
  post 'pdd/atualizar'
  
  post 'pdd/atualizado'
  
  post 'pdd/relatorios_unitarios'
  
  post 'pdd/regime_pesquisa'
  
  post 'pdd/relatorio_detalhado'
  ##########################################
  #Rotas relacionadas a configuração do PDD#
  ##########################################
  post 'pdd/gerenciar'
  
  post 'pdd/gerenciado'
  
  ##################################
  #Rotas relacionadas a crud do PDv#
  ##################################
  
  get 'pdv/home'

  get 'pdv/index'
  
  post 'pdv/exibir'

  get 'pdv/new'

  get 'pdv/show'
  
  post 'pdv/show'
  
  post 'pdv/excluir'
  
  post 'pdv/atualizar'
  
  post 'pdv/atualizado'
  
  get 'pdv/define_preco_gas'
  
  get 'pdv/define_preco_agua'
  
  get 'pdv/pagina_teste'
  
  get 'pdv/listar_por_representante'
  
  get 'pdv/listar_por_regiao'
  
  post 'pdv/listar_por_representante'
  
  post 'pdv/listar_por_regiao'
  
  get 'pdv/listar_por_regiao'
  
  post 'pdv/show_por_representante'
  
  post 'pdv/show_por_regiao'
 
  ##########################################
  #Rotas relacionadas a configuração do PDV#
  ##########################################
  post 'pdv/gerenciar'
  
   post 'pdv/gerenciado'
  
  #############################################
  #Rotas relacionadas as paginas de relatorios#
  #############################################
  get 'pdv/relatorios'
  
  post 'pdv/relatorio_detalhado'
  
   post 'pdv/relatorio_global'
  
  
  post 'pdv/relatorios_unitarios'
  
  post 'pdv/relatorio_unitario_celular'
 
  post 'pdv/regime_pesquisa'
  
  post 'pdv/regime_pesquisa_global'
  
  
 
  get 'server/pagina_teste'
  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'plainpage#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
