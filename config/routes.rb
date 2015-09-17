Rails.application.routes.draw do
  root "labels#new"

  resources :labels

end


#     Prefix Verb   URI Pattern                Controller#Action
#       root GET    /                          labels#new
#     labels GET    /labels(.:format)          labels#index
#            POST   /labels(.:format)          labels#create
#  new_label GET    /labels/new(.:format)      labels#new
# edit_label GET    /labels/:id/edit(.:format) labels#edit
#      label GET    /labels/:id(.:format)      labels#show
#            PATCH  /labels/:id(.:format)      labels#update
#            PUT    /labels/:id(.:format)      labels#update
#            DELETE /labels/:id(.:format)      labels#destroy
