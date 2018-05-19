Rails.application.routes.draw do
  mount Commontator::Engine => '/commontator'
  get '/home' => 'home#index'
  get '/admin/users/:id' => 'users#show'
  devise_for :users, controllers: {
                   sessions: 'users/sessions', 
                   registrations: 'users/registrations'}
  
 
 resources :lectures do 
          member do
            put "like", to: "lectures#upvote"
            put "dislike", to: "lectures#downvote"
            post "spam" , to:'lectures#spam' , as: :spam  
          end
  end
  resources :lectures
  resources :courses
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
