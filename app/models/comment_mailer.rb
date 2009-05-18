class CommentMailer < ActionMailer::Base
  
  def comment_confirmation(comment)
    recipients "natural_blindfold@hotmail.com"
    from "Wordcore Blog"
    subject "Wordcore Blog"
    body :comment => comment
  end
  

end
