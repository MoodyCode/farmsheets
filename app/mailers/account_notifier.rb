class AccountNotifier < ActionMailer::Base
  default :from => 'team@farmsheets.com'

  def send_suggestion_email(user, account, suggestion)
    @user = user
    @account = account
    @suggestion = suggestion
    mail( :to => 'team@farmsheets.com',
          :subject => 'FarmSheets - ' + @suggestion[:category])
  end
end