class ApplicationMailer < ActionMailer::Base
  helper_method :departments

  def departments
    return [
        [ 'COE Dean\'s Office', 0, ['tara.mullin@unlv.edu', 'marjorie.aylor@unlv.edu'] ],
        [ 'COE Advising Center', 1, ['tara.mullin@unlv.edu', 'maura.erickson@unlv.edu'] ],
        [ 'Transportation Research Center (TRC)', 2, ['tara.mullin@unlv.edu'] ],
        [ 'Civil & Env. Engr. & Const. (CEEC)', 3, ['larese.patillo@unlv.edu', 'tara.mullin@unlv.edu'] ],
        [ 'Computer Science (CS)', 4, ['tara.mullin@unlv.edu', 'leslie.crysler@unlv.edu'] ],
        [ 'Electrical & Computer Engr. (ECE)', 5, ['tara.mullin@unlv.edu', 'cameron.williams@unlv.edu'] ],
        [ 'Entertainment Engr. & Design (EED)', 6, ['tara.mullin@unlv.edu', 'marjorie.aylor@unlv.edu'] ],
        [ 'Mechanical Engineering (ME)', 7, ['tara.mullin@unlv.edu', 'terrel.parker@unlv.edu'] ],
        [ 'Center for Energy Research (CER)', 8, ['tara.mullin@unlv.edu', 'joan.conway@unlv.edu'] ],
        [ 'Aerospace Studies (AFROTC)', 9, ['jessica.sawicki@unlv.edu'] ],
        [ 'Military Science (ARMY)', 10, ['jessica.sawicki@unlv.edu'] ]
        #[ 'Guymon\'s Office', 0, ['guymon.hall@unlv.edu'] ]
    ]
  end
end