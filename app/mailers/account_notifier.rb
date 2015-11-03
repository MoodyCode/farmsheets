class AccountNotifier < ActionMailer::Base
  default :from => 'dmmoody@gmail.com'

  def send_suggestion_email(user, account, suggestion)
    @user = user
    @account = account
    @suggestion = suggestion
    mail( :to => 'dmmoody@gmail.com',
          :subject => @suggestion[:category])
  end
end