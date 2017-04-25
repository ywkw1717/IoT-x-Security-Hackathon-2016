Hackathon::Application.routes.draw do

  resources :reports
  root to: "reports#index"

  # apiのディレクトリをはさんでコントローラーをつくるので、namespaceでルーティングを設定
  namespace :api, default: {format: :json} do
    resources :reports, only: :create
  end

end
