class MailerController < ApplicationController
  def hourly_contract_email
    FormMailer.hourly_contract_email(params).deliver
    flash[:success] = 'Your contract request has been sent!'
    redirect_to hourly_contract_form_path
  end

  def loa_lob_contract_email
    FormMailer.loa_lob_contract_email(params).deliver
    flash[:success] = 'Your contract request has been sent!'
    redirect_to loa_lob_contract_form_path
  end

  def travel_request_email
    FormMailer.travel_request_email(params).deliver
    flash[:success] = 'Your travel request has been sent!'
    redirect_to travel_request_form_path
  end
end