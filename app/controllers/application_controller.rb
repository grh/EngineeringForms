class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :departments, :weekly_hours

  def departments
    return [
        [ 'COE Dean\'s Office', 0 ],
        [ 'COE Advising Center', 1 ],
        [ 'Transportation Research Center', 2 ],
        [ 'Civil & Env. Engr. & Const. (CEEC)', 3 ],
        [ 'Computer Science (CS)', 4 ],
        [ 'Electrical & Computer Engr. (ECE)', 5 ],
        [ 'Mechanical Engineering (ME)', 6 ],
        [ 'Center for Energy Research (CER)', 7 ],
        [ 'Aerospace Studies (AFROTC)', 8 ],
        [ 'Military Science (ARMY)', 9 ]
    ]
  end

  def weekly_hours
    return (1..40).map { |i| [ (i * 2.5).to_s + '% (' + i.to_s + ' hrs/wk)', i * 2.5 ] }
  end
end