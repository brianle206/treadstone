Treadstone::Engine.routes.draw do
 

	scope "/:content_class" do
		resources :entries
	end
	post 'preview', to: 'previews#show', as: :preview
	root to: 'dashboard#index'
end
