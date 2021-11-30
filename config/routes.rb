Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmlroot "welcome#landingPageAr"
  root "login#new"
  post "login" => "login#login"
  get "registration" => "login#registration"
  post "create" => "login#create"

  get "posts" => "posts#post"
  post "post/create" => "posts#create" , as: "create_post"
  get "edit/:id" => "posts#edit" ,as: "edit"
  post "update/:id" => "posts#update" , as: "update"
  get "destroy" => "posts#destroy"
  get "private/post" => "posts#private_post" , as: "private_post"
end
