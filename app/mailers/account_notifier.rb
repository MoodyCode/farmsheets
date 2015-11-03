class AccountNotifier < ActionMailer::Base

  def send_suggestion_email(user, account, suggestion)
    @user = user
    @account = account
    @suggestion = suggestion
    mail( :to => 'dmmoody@gmail.com',
          :subject => @suggestion[:category])
  end
end