Rails.application.routes.draw do
   resources :busforms do
      resources :stops do
      end
    end

   root "busforms#index"   

  get 'new/signup'=> 'new#signup'
  get 'new/bustickets'=> 'new#bustickets'
  get 'new/cabs'=> 'new#cabs'
  get 'new/citybus'=> 'new#citybus'
  get 'new/flights'=> 'new#flights'
  get 'new/home'=> 'new#home'
  get 'new/metro'=> 'new#metro'
  get 'new/train'=> 'new#train'

end



 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

