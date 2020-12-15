Rails.application.routes.draw do
	if Rails.env.development?
		mount GraphiQL::Rails::Engine, at:'/graphql', graphql_path: "graphql#execute"
	end
  post "/graphql", to: "graphql#execute"

  resources :doctors, only:[:create]
  post "/login", to: "doctors#login"
  get "/auto_login", to: "doctors#auto_login"
end
