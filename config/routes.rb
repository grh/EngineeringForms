Rails.application.routes.draw do
  root 'html#hourly_contract_form'
  get '/hourly-contract', to: 'html#hourly_contract_form', as: :hourly_contract_form
  get '/loa-lob-contract', to: 'html#loa_lob_contract_form', as: :loa_lob_contract_form
end
