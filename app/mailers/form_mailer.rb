class FormMailer < ApplicationMailer
  def hourly_contract_email(params)
    @params = params

    headers = {
        to: departments[@params[:department].to_i][2],
        cc: @params[:requester_email],
        from: "#{@params[:requester_first_name]} #{@params[:requester_last_name]} <#{@params[:requester_email]}>",
        subject: "Hourly Contract Request - #{@params[:employee_first_name]} #{@params[:employee_middle_initial]} #{@params[:employee_last_name]}",
        reply_to: @params[:requester_email]
    }

    mail(headers)
  end

  def loa_lob_contract_email(params)
    @params = params

    headers = {
        to: departments[@params[:department].to_i][2],
        cc: @params[:requester_email],
        from: "#{@params[:requester_first_name]} #{@params[:requester_last_name]} <#{@params[:requester_email]}>",
        subject: "LOA/LOB Contract Request - #{@params[:employee_first_name]} #{@params[:employee_middle_initial]} #{@params[:employee_last_name]}",
        reply_to: @params[:requester_email]
    }

    mail(headers)
  end
end