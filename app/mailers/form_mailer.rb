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

  def travel_request_email(params)
    @params = params

    headers = {
        to: departments[@params[:department].to_i][2],
        cc: @params[:requester_email],
        from: "#{@params[:requester_first_name]} #{@params[:requester_last_name]} <#{@params[:requester_email]}>",
        subject: "Travel Request - #{@params[:requester_first_name]} #{@params[:requester_middle_initial]} #{@params[:requester_last_name]}",
        reply_to: @params[:requester_email]
    }

    mail(headers)
  end

  def summer_contract_email(params)
    @params = params

    headers = {
        #to: departments[@params[:department].to_i][2],
        to: ['carmen.willis@unlv.edu', 'tara.mullin@unlv.edu'],
        cc: @params[:requester_email],
        from: "#{@params[:requester_first_name]} #{@params[:requester_last_name]} <#{@params[:requester_email]}>",
        subject: "Summer Contract Request - #{@params[:employee_first_name]} #{@params[:employee_middle_initial]} #{@params[:employee_last_name]}",
        reply_to: @params[:requester_email]
    }

    mail(headers)
  end

  def research_assistant_contract_email(params)
    @params = params

    headers = {
        #to: departments[@params[:department].to_i][2],
        to: ['carmen.willis@unlv.edu', 'tara.mullin@unlv.edu'],
        cc: @params[:requester_email],
        from: "#{@params[:requester_first_name]} #{@params[:requester_last_name]} <#{@params[:requester_email]}>",
        subject: "Research Assistant Contract Request - #{@params[:employee_first_name]} #{@params[:employee_middle_initial]} #{@params[:employee_last_name]}",
        reply_to: @params[:requester_email]
    }

    mail(headers)
  end
end