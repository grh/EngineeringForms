class ApplicationMailer < ActionMailer::Base
  helper_method :departments

  def departments
    return [
        [ 'COE Dean\'s Office', 0, ['maura.erickson@unlv.edu', 'marjorie.aylor@unlv.edu'] ],
        [ 'COE Advising Center', 1, ['kimberly.ornbaum@unlv.edu', 'maura.erickson@unlv.edu'] ],
        [ 'Transportation Research Center', 2, ['naveen.veeramisti@unlv.edu'] ],
        [ 'Civil & Env. Engr. & Const. (CEEC)', 3, ['gregory.devaul@unlv.edu'] ],
        [ 'Computer Science (CS)', 4, ['mario.martin@unlv.edu', 'leslie.crysler@unlv.edu'] ],
        [ 'Electrical & Computer Engr. (ECE)', 5, ['jennifer.reff@unlv.edu', 'cameron.williams@unlv.edu'] ],
        [ 'Mechanical Engineering (ME)', 6, ['joan.conway@unlv.edu', 'terrel.parker@unlv.edu'] ],
        [ 'Center for Energy Research (CER)', 7, ['tasha.ramos@unlv.edu', 'joan.conway@unlv.edu'] ],
        [ 'Aerospace Studies (AFROTC)', 8, ['jessica.sawicki@unlv.edu'] ],
        [ 'Military Science (ARMY)', 9, ['jessica.sawicki@unlv.edu'] ]
    ]
  end
end