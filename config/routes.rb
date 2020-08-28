Rails.application.routes.draw do
    resources :authors, except:[:delete]
    resources :posts, except:[:delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
