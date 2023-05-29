# == Route Map
#
#                                   Prefix Verb   URI Pattern                                                                                       Controller#Action
#                         new_user_session GET    /api/v1/auth/sign_in(.:format)                                                                    devise_token_auth/sessions#new {:format=>"json"}
#                             user_session POST   /api/v1/auth/sign_in(.:format)                                                                    devise_token_auth/sessions#create {:format=>"json"}
#                     destroy_user_session DELETE /api/v1/auth/sign_out(.:format)                                                                   devise_token_auth/sessions#destroy {:format=>"json"}
#                        new_user_password GET    /api/v1/auth/password/new(.:format)                                                               devise_token_auth/passwords#new {:format=>"json"}
#                       edit_user_password GET    /api/v1/auth/password/edit(.:format)                                                              devise_token_auth/passwords#edit {:format=>"json"}
#                            user_password PATCH  /api/v1/auth/password(.:format)                                                                   devise_token_auth/passwords#update {:format=>"json"}
#                                          PUT    /api/v1/auth/password(.:format)                                                                   devise_token_auth/passwords#update {:format=>"json"}
#                                          POST   /api/v1/auth/password(.:format)                                                                   devise_token_auth/passwords#create {:format=>"json"}
#                 cancel_user_registration GET    /api/v1/auth/cancel(.:format)                                                                     devise_token_auth/registrations#cancel {:format=>"json"}
#                    new_user_registration GET    /api/v1/auth/sign_up(.:format)                                                                    devise_token_auth/registrations#new {:format=>"json"}
#                   edit_user_registration GET    /api/v1/auth/edit(.:format)                                                                       devise_token_auth/registrations#edit {:format=>"json"}
#                        user_registration PATCH  /api/v1/auth(.:format)                                                                            devise_token_auth/registrations#update {:format=>"json"}
#                                          PUT    /api/v1/auth(.:format)                                                                            devise_token_auth/registrations#update {:format=>"json"}
#                                          DELETE /api/v1/auth(.:format)                                                                            devise_token_auth/registrations#destroy {:format=>"json"}
#                                          POST   /api/v1/auth(.:format)                                                                            devise_token_auth/registrations#create {:format=>"json"}
#               api_v1_auth_validate_token GET    /api/v1/auth/validate_token(.:format)                                                             devise_token_auth/token_validations#validate_token
#            rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
#               rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
#            rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
#      rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
#            rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
#             rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
#           rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
#                                          POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
#            rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
#                                          PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#destroy
# new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
#    rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
#    rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
# rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
#                       rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
#                 rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
#                                          GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
#                rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
#          rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
#                                          GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
#                       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
#                update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
#                     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create

Rails.application.routes.draw do
  
  scope :api do
    scope :v1, defaults: { format: 'json' } do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
  
end

