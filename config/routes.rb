Zhenwu::Application.routes.draw do

  devise_for :memebers

  root :to => "application#homepage"

  get 'videos' => 'application#videos'

  get 'video/:id' => 'application#video', as: 'video'

  get 'fees' => 'application#fees'

  get 'schedule' => 'application#schedule'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
#== Route Map
# Generated on 03 Jun 2013 20:36
#
#             memeber_session POST   /memebers/sign_in(.:format)       devise/sessions#create
#     destroy_memeber_session DELETE /memebers/sign_out(.:format)      devise/sessions#destroy
#            memeber_password POST   /memebers/password(.:format)      devise/passwords#create
#        new_memeber_password GET    /memebers/password/new(.:format)  devise/passwords#new
#       edit_memeber_password GET    /memebers/password/edit(.:format) devise/passwords#edit
#                             PUT    /memebers/password(.:format)      devise/passwords#update
# cancel_memeber_registration GET    /memebers/cancel(.:format)        devise/registrations#cancel
#        memeber_registration POST   /memebers(.:format)               devise/registrations#create
#    new_memeber_registration GET    /memebers/sign_up(.:format)       devise/registrations#new
#   edit_memeber_registration GET    /memebers/edit(.:format)          devise/registrations#edit
#                             PUT    /memebers(.:format)               devise/registrations#update
#                             DELETE /memebers(.:format)               devise/registrations#destroy
#                        root        /                                 application#homepage
#                      videos GET    /videos(.:format)                 application#videos
#                       video GET    /video/:id(.:format)              application#video
#                        fees GET    /fees(.:format)                   application#fees
#                    schedule GET    /schedule(.:format)               application#schedule
