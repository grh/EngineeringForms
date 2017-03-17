Rails.application.routes.draw do
  root 'html#hourly_contract_form'
  get '/hourly-contract', to: 'html#hourly_contract_form', as: :hourly_contract_form
  get '/loa-lob-contract', to: 'html#loa_lob_contract_form', as: :loa_lob_contract_form
  get '/travel-request', to: 'html#travel_request_form', as: :travel_request_form
  get '/summer-contract', to: 'html#summer_contract_form', as: :summer_contract_form
  get '/research-assistant-contract', to: 'html#research_assistant_contract_form', as: :research_assistant_contract_form
  post '/hourly-contract', to: 'mailer#hourly_contract_email', as: :hourly_contract_email
  post '/loa-lob-contract', to: 'mailer#loa_lob_contract_email', as: :loa_lob_contract_email
  post '/travel-request', to: 'mailer#travel_request_email', as: :travel_request_email
  post '/summer-contract', to: 'mailer#summer_contract_email', as: :summer_contract_email
  post '/research-assistant-contract', to: 'mailer#research_assistant_contract_email', as: :research_assistant_contract_email
end
