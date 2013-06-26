Zhenwu::Application.routes.draw do

  devise_for :members

  root :to => "application#homepage"

  get 'videos' => 'application#videos'

  get 'video/:id' => 'application#video', as: 'video'

  get 'fees' => 'application#fees'

  get 'schedule' => 'application#schedule'

  namespace :admin do
    get '/' => 'admin#dashboard'

    resources :videos do

      new do
        post :upload
        get :save_video
      end

    end

  end



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
# Generated on 26 Jun 2013 22:41
#
#             member_session POST   /members/sign_in(.:format)             devise/sessions#create
#     destroy_member_session DELETE /members/sign_out(.:format)            devise/sessions#destroy
#            member_password POST   /members/password(.:format)            devise/passwords#create
#        new_member_password GET    /members/password/new(.:format)        devise/passwords#new
#       edit_member_password GET    /members/password/edit(.:format)       devise/passwords#edit
#                            PUT    /members/password(.:format)            devise/passwords#update
# cancel_member_registration GET    /members/cancel(.:format)              devise/registrations#cancel
#        member_registration POST   /members(.:format)                     devise/registrations#create
#    new_member_registration GET    /members/sign_up(.:format)             devise/registrations#new
#   edit_member_registration GET    /members/edit(.:format)                devise/registrations#edit
#                            PUT    /members(.:format)                     devise/registrations#update
#                            DELETE /members(.:format)                     devise/registrations#destroy
#                       root        /                                      application#homepage
#                     videos GET    /videos(.:format)                      application#videos
#                      video GET    /video/:id(.:format)                   application#video
#                       fees GET    /fees(.:format)                        application#fees
#                   schedule GET    /schedule(.:format)                    application#schedule
#                      admin GET    /admin(.:format)                       admin/admin#dashboard
#     upload_new_admin_video POST   /admin/videos/new/upload(.:format)     admin/videos#upload
# save_video_new_admin_video GET    /admin/videos/new/save_video(.:format) admin/videos#save_video
#               admin_videos GET    /admin/videos(.:format)                admin/videos#index
#                            POST   /admin/videos(.:format)                admin/videos#create
#            new_admin_video GET    /admin/videos/new(.:format)            admin/videos#new
#           edit_admin_video GET    /admin/videos/:id/edit(.:format)       admin/videos#edit
#                admin_video GET    /admin/videos/:id(.:format)            admin/videos#show
#                            PUT    /admin/videos/:id(.:format)            admin/videos#update
#                            DELETE /admin/videos/:id(.:format)            admin/videos#destroy
