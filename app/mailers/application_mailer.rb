class ApplicationMailer < ActionMailer::Base
  helper_method :departments

  def departments
    return [
        [ 'COE Dean\'s Office', 0, ['EGR-Dean-Staff@unlv.edu', 'tara.mullin@unlv.edu', 'guymon.hall@unlv.edu'] ],
        [ 'COE Advising Center', 1, [ 'kimberlee.ornbaum@unlv.edu', 'guymon.hall@unlv.edu'] ],
        [ 'Transportation Research Center (TRC)', 2, ['larese.patillo@unlv.edu', 'tara.mullin@unlv.edu', 'guymon.hall@unlv.edu'] ],
        [ 'Civil & Env. Engr. & Const. (CEEC)', 3, ['CEEC-Staff@unlv.edu', 'tara.mullin@unlv.edu', 'guymon.hall@unlv.edu'] ],
        [ 'Computer Science (CS)', 4, ['CS-Staff@unlv.edu', 'tara.mullin@unlv.edu', 'guymon.hall@unlv.edu'] ],
        [ 'Electrical & Computer Engr. (ECE)', 5, ['ECE-Staff@unlv.edu', 'tara.mullin@unlv.edu', 'guymon.hall@unlv.edu'] ],
        [ 'Entertainment Engr. & Design (EED)', 6, ['EGR-Dean-Staff@unlv.edu', 'tara.mullin@unlv.edu', 'guymon.hall@unlv.edu'] ],
        [ 'Mechanical Engineering (ME)', 7, ['ME-Staff@unlv.edu', 'tara.mullin@unlv.edu', 'guymon.hall@unlv.edu'] ],
        [ 'Center for Energy Research (CER)', 8, ['tasha.ramos@unlv.edu', 'tara.mullin@unlv.edu', 'Rosangela.Wacaser@unlv.edu', 'guymon.hall@unlv.edu'] ],
        [ 'Aerospace Studies (AFROTC)', 9, ['jessica.sawicki@unlv.edu', 'guymon.hall@unlv.edu'] ],
        [ 'Military Science (ARMY)', 10, ['jessica.sawicki@unlv.edu', 'guymon.hall@unlv.edu'] ]
        #[ 'Guymon\'s Office', 0, ['guymon.hall@unlv.edu'] ]
    ]
  end
end