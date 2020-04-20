# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                user_blogs GET    /user_blogs(.:format)                                                                    user_blogs#index
#                           POST   /user_blogs(.:format)                                                                    user_blogs#create
#             new_user_blog GET    /user_blogs/new(.:format)                                                                user_blogs#new
#            edit_user_blog GET    /user_blogs/:id/edit(.:format)                                                           user_blogs#edit
#                 user_blog GET    /user_blogs/:id(.:format)                                                                user_blogs#show
#                           PATCH  /user_blogs/:id(.:format)                                                                user_blogs#update
#                           PUT    /user_blogs/:id(.:format)                                                                user_blogs#update
#                           DELETE /user_blogs/:id(.:format)                                                                user_blogs#destroy
#                           GET    /user_blogs/:blog_id/new_post(.:format)                                                  user_blogs#new_post
#                           POST   /user_blogs/:blog_id/create_post(.:format)                                               user_blogs#create_post
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :user_blogs

  get "/user_blogs/:blog_id/new_post", to: "user_blogs#new_post"
  post "/user_blogs/:blog_id/create_post", to: "user_blogs#create_post"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
