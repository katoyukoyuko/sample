Rails.application.routes.draw do
  get '/blogs', to: 'blogs#index'
  get '/inquiries', to: 'inquiries#index'
  # get 'stops/index'
  # # get 'blogs/index' #初期記述をコメント
  # get '/blogs', to: 'blogs#index' # 追記
  # get '/stocks', to: 'stocks#index' # 課題
  # get '/stops', to: 'stops#index' # 課題
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs do
    collection do
      post :confirm
    end
  end

  resources :inquiries do
  end
end
