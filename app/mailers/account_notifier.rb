class AccountNotifier < ActionMailer::Base
  default :from => 'Team@farmsheets.com'

  def send_suggestion_email(user, account, suggestion)
    @user = user
    @account = account
    @suggestion = suggestion
    mail( :to => 'dmmoody@gmail.com',
          :subject => 'FarmSheets - ' + @suggestion[:category])
  end
end